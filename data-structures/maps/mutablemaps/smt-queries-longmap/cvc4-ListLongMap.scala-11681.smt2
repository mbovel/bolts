; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136684 () Bool)

(assert start!136684)

(declare-fun res!1078246 () Bool)

(declare-fun e!880220 () Bool)

(assert (=> start!136684 (=> (not res!1078246) (not e!880220))))

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136684 (= res!1078246 (validMask!0 mask!918))))

(assert (=> start!136684 e!880220))

(assert (=> start!136684 true))

(declare-datatypes ((array!105677 0))(
  ( (array!105678 (arr!50946 (Array (_ BitVec 32) (_ BitVec 64))) (size!51497 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105677)

(declare-fun array_inv!39591 (array!105677) Bool)

(assert (=> start!136684 (array_inv!39591 _keys!614)))

(declare-fun b!1578060 () Bool)

(declare-fun res!1078245 () Bool)

(assert (=> b!1578060 (=> (not res!1078245) (not e!880220))))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(declare-fun ee!18 () (_ BitVec 32))

(assert (=> b!1578060 (= res!1078245 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51497 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50946 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1578061 () Bool)

(declare-fun res!1078247 () Bool)

(assert (=> b!1578061 (=> (not res!1078247) (not e!880220))))

(declare-fun k!772 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1578061 (= res!1078247 (validKeyInArray!0 k!772))))

(declare-fun b!1578062 () Bool)

(assert (=> b!1578062 (= e!880220 (bvslt (bvsub #b01111111111111111111111111111111 x!466) #b00000000000000000000000000000000))))

(assert (= (and start!136684 res!1078246) b!1578060))

(assert (= (and b!1578060 res!1078245) b!1578061))

(assert (= (and b!1578061 res!1078247) b!1578062))

(declare-fun m!1450203 () Bool)

(assert (=> start!136684 m!1450203))

(declare-fun m!1450205 () Bool)

(assert (=> start!136684 m!1450205))

(declare-fun m!1450207 () Bool)

(assert (=> b!1578060 m!1450207))

(declare-fun m!1450209 () Bool)

(assert (=> b!1578061 m!1450209))

(push 1)

(assert (not b!1578061))

(assert (not start!136684))

(check-sat)

(pop 1)

(push 1)

(check-sat)

