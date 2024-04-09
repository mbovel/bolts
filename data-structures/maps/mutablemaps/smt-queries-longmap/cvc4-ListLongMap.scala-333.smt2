; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6122 () Bool)

(assert start!6122)

(declare-fun res!25123 () Bool)

(declare-fun e!26712 () Bool)

(assert (=> start!6122 (=> (not res!25123) (not e!26712))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6122 (= res!25123 (validMask!0 mask!853))))

(assert (=> start!6122 e!26712))

(assert (=> start!6122 true))

(declare-fun b!42225 () Bool)

(assert (=> b!42225 (= e!26712 (bvslt (bvadd #b00000000000000000000000000000001 mask!853) #b00000000000000000000000000000000))))

(assert (= (and start!6122 res!25123) b!42225))

(declare-fun m!35823 () Bool)

(assert (=> start!6122 m!35823))

(push 1)

(assert (not start!6122))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!7625 () Bool)

(assert (=> d!7625 (= (validMask!0 mask!853) (and (or (= mask!853 #b00000000000000000000000000000111) (= mask!853 #b00000000000000000000000000001111) (= mask!853 #b00000000000000000000000000011111) (= mask!853 #b00000000000000000000000000111111) (= mask!853 #b00000000000000000000000001111111) (= mask!853 #b00000000000000000000000011111111) (= mask!853 #b00000000000000000000000111111111) (= mask!853 #b00000000000000000000001111111111) (= mask!853 #b00000000000000000000011111111111) (= mask!853 #b00000000000000000000111111111111) (= mask!853 #b00000000000000000001111111111111) (= mask!853 #b00000000000000000011111111111111) (= mask!853 #b00000000000000000111111111111111) (= mask!853 #b00000000000000001111111111111111) (= mask!853 #b00000000000000011111111111111111) (= mask!853 #b00000000000000111111111111111111) (= mask!853 #b00000000000001111111111111111111) (= mask!853 #b00000000000011111111111111111111) (= mask!853 #b00000000000111111111111111111111) (= mask!853 #b00000000001111111111111111111111) (= mask!853 #b00000000011111111111111111111111) (= mask!853 #b00000000111111111111111111111111) (= mask!853 #b00000001111111111111111111111111) (= mask!853 #b00000011111111111111111111111111) (= mask!853 #b00000111111111111111111111111111) (= mask!853 #b00001111111111111111111111111111) (= mask!853 #b00011111111111111111111111111111) (= mask!853 #b00111111111111111111111111111111)) (bvsle mask!853 #b00111111111111111111111111111111)))))

(assert (=> start!6122 d!7625))

(push 1)

(check-sat)

