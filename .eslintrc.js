module.exports = {
  parser: "babel-eslint",
  extends: ["eslint:all", "plugin:vue/recommended", "prettier"],
  plugins: ["prettier"],
  rules: {
    "prettier/prettier": "error",
    "vue/max-attributes-per-line": "off",
    "vue/require-default-prop": "off",
    "vue/attribute-hyphenation": "off",
    "sort-keys": "off",
    "multiline-comment-style": "off",
    "capitalized-comments": "off",
    "one-var": "off",
    "sort-imports": "off",
    "no-magic-numbers": "warn",
    "no-console": "off",
    eqeqeq: ["error", "smart"],
    "no-eq-null": "off",
    "prefer-named-capture-group": "off",
    semi: ["error", "never"]
  }
};
