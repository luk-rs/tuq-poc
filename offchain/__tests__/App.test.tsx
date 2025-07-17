import App from '@/App';
import '@testing-library/jest-dom';
import { render, screen } from '@testing-library/react';

test('renders welcome message', () => {
  render(<App />);
  expect(
    screen.getByText(/Bem-vindo ao teu Cardano dApp!/i),
  ).toBeInTheDocument();
});
