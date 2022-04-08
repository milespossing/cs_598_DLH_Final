import pytorch_lightning as pl
from G_Bert.code.bert_models import FuseEmbeddings

class PretrainedBert(pl.LightningModule):
    def __init__(self):
        super().__init__()
        self.embedding = FuseEmbeddings

    def forward(self, *inputs):
        return inputs

class Bert(PretrainedBert):
    pass
