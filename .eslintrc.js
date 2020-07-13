module.exports = {
  "settings": {
    "react": {
      "version": "16"
    }
  },
  "plugins": ["import", "react-hooks"],
  "extends": [
    "eslint:recommended",
    "plugin:prettier/recommended",
    "plugin:react/recommended",
    "plugin:import/react"
  ],
  "rules": {
    "no-console": "off",
    "no-unused-vars": [
      "warn",
      { "args": "all", "argsIgnorePattern": "^_", "varsIgnorePattern": "^_" }
    ],
    "react/boolean-prop-naming": [
      "error",
      { "rule": "^(is|has)[A-Z]([A-Za-z0-9]?)+" }
    ],
    "react/jsx-boolean-value": "error",
    "react/jsx-handler-names": "error",
    "import/no-unresolved": "error",
    "import/order": ["error", { "groups": [["external", "builtin"]] }],
    "import/newline-after-import": "error",
    "react-hooks/rules-of-hooks": "error",
    "react-hooks/exhaustive-deps": "warn"
  },
  "env": {
    "es6": true,
    "browser": true,
    "node": true,
    "jest": true
  },
  "parser": "babel-eslint",
  "parserOptions": {
    "ecmaVersion": 6,
    "sourceType": "module",
    "ecmaFeature": {
      "jsx": true
    }
  }
}
