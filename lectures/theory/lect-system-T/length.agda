open import Data.Product
open import Data.List hiding (length)
open import Data.Nat
open import Data.Bool
open import Relation.Binary.PropositionalEquality hiding ([_])

p : {a : Set} → List a → ℕ → Bool
p [] 0 = true
p [] _ = false
p (x ∷ xs) 0 = false
p (x ∷ xs) (suc n) = p xs n

-- length : {a : Set} → (l : List a) → Σ[ x ∈ ℕ ](p l x ≡ true)
-- length [] = (0 , refl)
-- length (x ∷ xs) with (length xs)
-- ... | (n , pf-n) = (suc n , pf-n)

-- Erasing the proof:
length-core : {a : Set} → (l : List a) → Σ[ x ∈ ℕ ](p l x ≡ true)
length-core [] = (0 , refl)
length-core (x ∷ xs) with (length-core xs)
... | (n , pf-n) = (suc n , pf-n)

length : {a : Set} → List a → ℕ
length l = (proj₁ (length-core l))

test = length (1 ∷ 2 ∷ 3 ∷ 4 ∷ 5 ∷ 6 ∷ [])

