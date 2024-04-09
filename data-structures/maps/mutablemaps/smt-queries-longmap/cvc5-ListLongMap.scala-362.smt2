; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6988 () Bool)

(assert start!6988)

(declare-datatypes ((array!2989 0))(
  ( (array!2990 (arr!1438 (Array (_ BitVec 32) (_ BitVec 64))) (size!1656 (_ BitVec 32))) )
))
(declare-fun a!4412 () array!2989)

(declare-fun i!1489 () (_ BitVec 32))

(declare-fun size!30 () (_ BitVec 32))

(assert (=> start!6988 (and (bvslt (size!1656 a!4412) #b01111111111111111111111111111111) (bvsge i!1489 #b00000000000000000000000000000000) (bvsle i!1489 (size!1656 a!4412)) (= (size!1656 a!4412) size!30) (= a!4412 (array!2990 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!30)) (not (= i!1489 size!30)) (bvsge i!1489 (size!1656 a!4412)))))

(declare-fun array_inv!802 (array!2989) Bool)

(assert (=> start!6988 (array_inv!802 a!4412)))

(assert (=> start!6988 true))

(declare-fun bs!2095 () Bool)

(assert (= bs!2095 start!6988))

(declare-fun m!39821 () Bool)

(assert (=> bs!2095 m!39821))

(push 1)

(assert (not start!6988))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

