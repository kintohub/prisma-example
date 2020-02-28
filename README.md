# prisma-example

Basic example of getting prisma2 working locally + remotely on KintoHub.

## Requirements

* Install docker 2.x
* Run `npm init -y`
* Run `npm install typescript ts-node prisma2 --save-dev`
* Run `npm install @prisma/client`

## Setup Locally

1) run `docker-compose up -d`
2) run `npx prisma2 introspect`
3) run `npx prisma2 generate`
4) run `touch tsconfig.json` and the following contents to it:

```
{
  "compilerOptions": {
    "sourceMap": true,
    "outDir": "dist",
    "strict": true,
    "lib": ["esnext", "dom"],
    "esModuleInterop": true
  }
}
```

## TODO: How to get on kintohub
