
#! /bin/bash
#
python train.py --save_path vae_model_no_drop/ \
		--train_set "dataset/jsb_train.pkl dataset/nmd_train.pkl" \
                --test_set "dataset/jsb_test.pkl dataset/nmd_test.pkl" \
		--epoch 300 \
                --x_depth "89 33 33" \
		--enc_rnn_dim 512 \
		--enc_rnn_layer 1 \
		--enc_hyper_unit 256 \
		--enc_dropout 0.25 \
		--enc_rnn hyperlstm \
		--dec_rnn_dim 512 \
		--dec_hyper_unit 256 \
		--dec_dropout 0.2 \
		--dec_rnn_layer 1 \
		--dec_rnn hyperlstm \
                --attention 0 \
		--cont_dim 120 \
		--cat_dim 2 \
		--l2_reg 0.0 \
		--kl_reg 0.8 \
                --gumbel 0.02 \
		--style_embed_dim 80 \
		--kl_anneal 1800 \
		--mu_force 1.3 \
		--batch_size 64
