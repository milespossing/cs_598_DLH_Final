import pytorch_lightning as pl

class OntologyEmbedding(pl.LightningModule):
    pass

class ConcatEmbeddings(pl.LightningModule):
    def __init__(self):
        super().__init__()

        self.rx_embedding = OntologyEmbedding()
        self.dx_embedding = OntologyEmbedding()
        pass

class FuseEmbeddings(pl.LightningModule):
    def __init__(self):
        pass