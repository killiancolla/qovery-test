const MYVAR = process.env.NEXT_PUBLIC_MYVAR;

if (!MYVAR) {
    throw new Error("❌ La variable d'environnement NEXT_PUBLIC_MYVAR est manquante !");
}

export const env = {
    MYVAR,
};