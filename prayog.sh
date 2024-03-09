export BASE="sarvamai/OpenHathi-7B-Hi-v0.1-Base"
export QUANTS="nyunai/OpenHathi-7B-Hi-v0.1-Base-AWQ-samvaad-hi-v1-chat-format,nyunai/OpenHathi-7B-Hi-v0.1-Base-AWQ-wikitext,nyunai/OpenHathi-7B-Hi-v0.1-Base-AWQ-samvaad-hi-v1-tulu-format"
export ADAPTED="nyunai/OpenHathi-7B-Hi-v0.1-Base-LoRA-samvaad-hi-v1-tulu-format"
export RESULTS="/home/shwu/prayog/results"
export CHAT_FORMATTING_FUNCTION="eval.templates.create_prompt_with_tulu_chat_format"
export LOGS="/home/shwu/prayog/logs"
export HELLASWAG_CACHE="/home/shwu/prayog/.cache"


cd indicinstruct

mkdir $LOGS -p

# translated
bash scripts/indic_eval/arc.sh 2>&1 | tee $LOGS/arc.log 
bash scripts/indic_eval/boolq.sh 2>&1 | tee $LOGS/boolq.log 
bash scripts/indic_eval/hellaswag.sh 2>&1 | tee $LOGS/hellaswag.log 
bash scripts/indic_eval/winogrande.sh 2>&1 | tee $LOGS/winogrande.log 
bash scripts/indic_eval/mmlu.sh 2>&1 | tee $LOGS/mmlu.log 

# indic
bash scripts/indic_eval/indiccopa.sh 2>&1 | tee $LOGS/indiccopa.log 
bash scripts/indic_eval/indicsentiment.sh 2>&1 | tee $LOGS/indicsentiment.log 
bash scripts/indic_eval/indicxnli.sh 2>&1 | tee $LOGS/indicxnli.log 
bash scripts/indic_eval/indicxparaphrase.sh 2>&1 | tee $LOGS/indicxparaphrase.log 


export ADAPTED="nyunai/OpenHathi-7B-Hi-v0.1-Base-LoRA-samvaad-hi-v1-chat-format"
export CHAT_FORMATTING_FUNCTION="eval.templates.create_prompt_with_chat_format"

# translated
bash scripts/indic_eval/arc.sh 2>&1 | tee $LOGS/arc.log 
bash scripts/indic_eval/boolq.sh 2>&1 | tee $LOGS/boolq.log 
bash scripts/indic_eval/hellaswag.sh 2>&1 | tee $LOGS/hellaswag.log 
bash scripts/indic_eval/winogrande.sh 2>&1 | tee $LOGS/winogrande.log 
bash scripts/indic_eval/mmlu.sh 2>&1 | tee $LOGS/mmlu.log 

# indic
bash scripts/indic_eval/indiccopa.sh 2>&1 | tee $LOGS/indiccopa.log 
bash scripts/indic_eval/indicsentiment.sh 2>&1 | tee $LOGS/indicsentiment.log 
bash scripts/indic_eval/indicxnli.sh 2>&1 | tee $LOGS/indicxnli.log 
bash scripts/indic_eval/indicxparaphrase.sh 2>&1 | tee $LOGS/indicxparaphrase.log 