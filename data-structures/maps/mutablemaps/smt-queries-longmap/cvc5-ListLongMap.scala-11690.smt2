; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136792 () Bool)

(assert start!136792)

(declare-fun mask!888 () (_ BitVec 32))

(declare-fun k!753 () (_ BitVec 64))

(assert (=> start!136792 (and (bvsge mask!888 #b00000000000000000000000000000000) (bvsle mask!888 #b00111111111111111111111111111111) (let ((bdg!57052 ((_ extract 31 0) (bvand (bvxor k!753 (bvlshr k!753 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((bdg!57053 (bvmul (bvxor bdg!57052 (bvlshr bdg!57052 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (let ((bdg!57054 (bvand (bvxor bdg!57053 (bvlshr bdg!57053 #b00000000000000000000000000001101)) mask!888))) (or (bvsge bdg!57054 (bvadd #b00000000000000000000000000000001 mask!888)) (bvslt bdg!57054 #b00000000000000000000000000000000))))))))

(assert (=> start!136792 true))

(push 1)

(check-sat)

(pop 1)

