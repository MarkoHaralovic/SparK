# encoder hyperparameters
MODEL="convnext_atto"
INPUT_SIZE=64
SBN=True

# SparK hyperparameters
MASK=0.6

# data hyperparameters
BATCH_SIZE=2
DATALOADER_WORKERS=4

# pre-training hyperparameters
DP=0.0
BASE_LR=2e-4
WD=0.04
WDE=0.2
EP=1600
WP_EP=40
CLIP=5
OPT='lamb'
ADA=0.

# environment
EXP_NAME="${model}_mask_${MASK}_is_${INPUT_SIZE}_bs_${BATCH_SIZE}_baselr_${BASE_LR}_epochs_${EP}_opt_${OPT}"
EXP_DIR="/log_dir/${exp_name}" #will be created if not exists
DATA_PATH='../../imagenet100'
INIT_WEIGTH=''   # use some checkpoint as model weight initialization; ONLY load model weights
RESUME_FROM=''   # resume the experiment from some checkpoint.pth; load model weights, optimizer states, and last epoch
    

python main.py \
    --model $MODEL \
    --input_size $INPUT_SIZE \
    --sbn $SBN \
    --mask $MASK \
    --batch_size $BATCH_SIZE \
    --dataloader_workers $DATALOADER_WORKERS \
    --dp $DP \
    --base_lr $BASE_LR \
    --wd $WD \
    --wde $WDE \
    --ep $EP \
    --wp_ep $WP_EP \
    --clip $CLIP \
    --opt $OPT \
    --ada $ADA \
    --exp_name "$EXP_NAME" \
    --exp_dir "$EXP_DIR" \
    --data_path "$DATA_PATH" \
    --init_weight "$INIT_WEIGTH" \
    --resume_from "$RESUME_FROM"