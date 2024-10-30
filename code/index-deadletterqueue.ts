import {DeadLetterQueueConsumer} from "./services/deadLetterQueueConsumer";

async function main(){
    await new DeadLetterQueueConsumer().runConsumer()
}

main().catch(e => console.log(e))