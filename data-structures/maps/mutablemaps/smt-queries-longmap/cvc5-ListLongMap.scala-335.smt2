; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6142 () Bool)

(assert start!6142)

(declare-fun res!25135 () Bool)

(declare-fun e!26724 () Bool)

(assert (=> start!6142 (=> (not res!25135) (not e!26724))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6142 (= res!25135 (validMask!0 mask!853))))

(assert (=> start!6142 e!26724))

(assert (=> start!6142 true))

(declare-fun b!42237 () Bool)

(assert (=> b!42237 (= e!26724 (and (bvslt (bvadd #b00000000000000000000000000000001 mask!853) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853))))))

(assert (= (and start!6142 res!25135) b!42237))

(declare-fun m!35831 () Bool)

(assert (=> start!6142 m!35831))

(push 1)

(assert (not start!6142))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!7639 () Bool)

(assert (=> d!7639 (= (validMask!0 mask!853) (and (or (= mask!853 #b00000000000000000000000000000111) (= mask!853 #b00000000000000000000000000001111) (= mask!853 #b00000000000000000000000000011111) (= mask!853 #b00000000000000000000000000111111) (= mask!853 #b00000000000000000000000001111111) (= mask!853 #b00000000000000000000000011111111) (= mask!853 #b00000000000000000000000111111111) (= mask!853 #b00000000000000000000001111111111) (= mask!853 #b00000000000000000000011111111111) (= mask!853 #b00000000000000000000111111111111) (= mask!853 #b00000000000000000001111111111111) (= mask!853 #b00000000000000000011111111111111) (= mask!853 #b00000000000000000111111111111111) (= mask!853 #b00000000000000001111111111111111) (= mask!853 #b00000000000000011111111111111111) (= mask!853 #b00000000000000111111111111111111) (= mask!853 #b00000000000001111111111111111111) (= mask!853 #b00000000000011111111111111111111) (= mask!853 #b00000000000111111111111111111111) (= mask!853 #b00000000001111111111111111111111) (= mask!853 #b00000000011111111111111111111111) (= mask!853 #b00000000111111111111111111111111) (= mask!853 #b00000001111111111111111111111111) (= mask!853 #b00000011111111111111111111111111) (= mask!853 #b00000111111111111111111111111111) (= mask!853 #b00001111111111111111111111111111) (= mask!853 #b00011111111111111111111111111111) (= mask!853 #b00111111111111111111111111111111)) (bvsle mask!853 #b00111111111111111111111111111111)))))

(assert (=> start!6142 d!7639))

(push 1)

(check-sat)

