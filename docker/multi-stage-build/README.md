# Multi-stage build

O multi-stage build visa otimizar o consumo de recursos dos containers.

Conteúdo obtido em [Usando Docker Multi-Stage Build para otimizar a imagem](https://cursos.alura.com.br/usando-docker-multi-stage-build-para-otimizar-a-imagem-c74) no Alura+.

Para ver o consumo de armazenamento por camadas da imagem, execute o comando
```bash
docker history <image_name>
```

O arquivo [before.dockerfile](before.dockerfile) mostra uma imagem não otimizada, enquanto o [after.dockerfile](after.dockerfile) mostra uma imagem otimizada.