
# Spring Batch

    Used for Batch Processing Applications ( Schedulers, Crons) 
    Used for generating reports, mail campaigns, reminders..


> Inherently contains metadata repo for storing job data. This helps in error checking or restarting from a particular step ( like game checkpoint).
> Supports transactions support

    Job Name
    Job Parameters
    Job Instance
    Job Execution

    TaskLet - Contains a single execute function, it will run until it returns finished.
    Chunk 
    

    Job - Multiple Steps

> Job name + Job parameters -> Unique Job Instance
> Once a job is completed we cannot re-execute it, only if it is paused or failed, it will re run from that step

    JobBuilder  

                start()
                .next().next()....build()

    StepBuilder

    Conditonal flow Transitioning

        if (status is this, do this this job else some other job)

        .next()
        .on("FAILED).to().
            .from().on("*).to()

        > from denotes else if
        > to denotes then
        > on is basically checking equality, * reperesents all states other than FAILED 

> Decider - Job Execution Decider
    
    We can also create sepearte classes for storing this deider logic
    
    public class DeciderClass implements JobExecutionDecider ( We can have custom status)
        We will override decide function, where we will place the decider logic.

        .next()
        .on("FAILED").to(decider())
            .on("FAILED").to()

>  Status 
    
    Batch Status -> overall status of the job
    Exit Status -> status returned by the step function

    We use the exit status for conditional transfer
        