module.exports = {
  extends: [
    'eslint:recommended',
    // 'standard',
    // 'plugin:vue/recommended',
    // 'plugin:react/recommended',
  ],
  plugins: [
    'html',
    // 'standard',
    'promise',
  ],
  env: {
    browser: true,
    node: true,
    es6: true,
  },
  parserOptions: {
      ecmaVersion: 7,
      sourceType: 'module',
      ecmaFeatures: {
          jsx: true,
      },
  },
  rules: {
    'no-console': 0
  }
};

