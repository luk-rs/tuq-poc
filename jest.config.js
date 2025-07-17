/** @type {import('ts-jest').JestConfigWithTsJest} */
module.exports = {
  preset: 'ts-jest',
  testEnvironment: 'jsdom',

  // Look for tests under offchain/
  roots: ['<rootDir>/offchain'],

  // Patterns to detect your test files
  testMatch: ['**/__tests__/**/*.[jt]s?(x)', '**/?(*.)+(spec|test).[tj]s?(x)'],

  // Transform TS/TSX using ts-jest
  transform: {
    '^.+\\.(ts|tsx)$': 'ts-jest',
  },

  // Tell ts-jest exactly which tsconfig to use
  globals: {
    'ts-jest': {
      tsconfig: '<rootDir>/offchain/tsconfig.json',
    },
  },

  // Resolve your @ alias
  moduleNameMapper: {
    '^@/(.*)$': '<rootDir>/offchain/src/$1',
  },

  // File extensions jest will process
  moduleFileExtensions: ['ts', 'tsx', 'js', 'jsx', 'json', 'node'],
};
