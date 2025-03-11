# Minecraft Bedrock Server

## Créer un fichier allowlist

**Fichier allowlist.json à la racine :**

*Exemple :*

```
[
    {
        "ignoresPlayerLimit": false,
        "name": "player1",
        "xuid": "123456789"
    },
    {
        "ignoresPlayerLimit": false,
        "name": "player2",
        "xuid": "234114123"
    },
    {
        "ignoresPlayerLimit": false,
        "name": "player3",
        "xuid": "52819329"
    }
]
```

## Créer un fichier permissions

**Fichier permissions.json à la racine :**

*Exemple :*

```
[
    {
        "permission": "operator",
        "xuid": "123456789"
    },
    {
        "permission": "member",
        "xuid": "52819329"
    },
    {
        "permission": "visitor",
        "xuid": "234114123"
    }
]
```

## Installer make

```
apt update
apt install make
```

Permet d'utiliser le fichier Makefile

Exemple : `make up`

Pour visualiser toutes les commandes : `make help`

## Autoriser le port

Dans le cadre de notre configuration, et si pare-feu ou équivalent, autoriser le port (TCP et UDP) **19171** (par défaut le *19132*) en entrée et sortie.

## TIPS

* Téléporter joueur 1 vers joueur 2 : `/tp Player1 Player2`
* Téléporter tous les joueurs vers soi : `/tp @a @s`
* Téléporter le joueur le plus proche vers soi : `/tp @p @s`


