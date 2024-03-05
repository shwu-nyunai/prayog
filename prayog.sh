export BASE="sarvamai/OpenHathi-7B-Hi-v0.1-Base"
export QUANTS="/home/shwu/prayog/custom_data/models/openhathi-awq-4-samvaad-hi-v1-chat-format,/home/shwu/prayog/custom_data/models/openhathi-awq-4-wikitext,/home/shwu/prayog/custom_data/models/openhathi-awq-4-samvaad-hi-v1-tulu-format"
export ADAPTED=""
export RESULTS="/home/shwu/prayog/results"

cd indicinstruct

# # translated
bash scripts/indic_eval/arc.sh
bash scripts/indic_eval/boolq.sh # tbd
bash scripts/indic_eval/hellaswag.sh
bash scripts/indic_eval/winogrande.sh
bash scripts/indic_eval/mmlu.sh

# # indic
bash scripts/indic_eval/indiccopa.sh
bash scripts/indic_eval/indicsentiment.sh
bash scripts/indic_eval/indicxnli.sh
bash scripts/indic_eval/indicxparaphrase.sh
