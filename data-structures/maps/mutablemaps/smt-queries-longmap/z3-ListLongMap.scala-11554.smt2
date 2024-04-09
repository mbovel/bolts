; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134604 () Bool)

(assert start!134604)

(declare-fun res!1073414 () Bool)

(declare-fun e!875957 () Bool)

(assert (=> start!134604 (=> (not res!1073414) (not e!875957))))

(declare-fun mask!4043 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134604 (= res!1073414 (validMask!0 mask!4043))))

(assert (=> start!134604 e!875957))

(assert (=> start!134604 true))

(declare-datatypes ((array!104777 0))(
  ( (array!104778 (arr!50564 (Array (_ BitVec 32) (_ BitVec 64))) (size!51115 (_ BitVec 32))) )
))
(declare-fun a!3462 () array!104777)

(declare-fun array_inv!39209 (array!104777) Bool)

(assert (=> start!134604 (array_inv!39209 a!3462)))

(declare-fun b!1571021 () Bool)

(assert (=> b!1571021 (= e!875957 (and (= (size!51115 a!3462) (bvadd #b00000000000000000000000000000001 mask!4043)) (bvsgt #b00000000000000000000000000000000 (size!51115 a!3462))))))

(assert (= (and start!134604 res!1073414) b!1571021))

(declare-fun m!1445069 () Bool)

(assert (=> start!134604 m!1445069))

(declare-fun m!1445071 () Bool)

(assert (=> start!134604 m!1445071))

(check-sat (not start!134604))
(check-sat)
(get-model)

(declare-fun d!164395 () Bool)

(assert (=> d!164395 (= (validMask!0 mask!4043) (and (or (= mask!4043 #b00000000000000000000000000000111) (= mask!4043 #b00000000000000000000000000001111) (= mask!4043 #b00000000000000000000000000011111) (= mask!4043 #b00000000000000000000000000111111) (= mask!4043 #b00000000000000000000000001111111) (= mask!4043 #b00000000000000000000000011111111) (= mask!4043 #b00000000000000000000000111111111) (= mask!4043 #b00000000000000000000001111111111) (= mask!4043 #b00000000000000000000011111111111) (= mask!4043 #b00000000000000000000111111111111) (= mask!4043 #b00000000000000000001111111111111) (= mask!4043 #b00000000000000000011111111111111) (= mask!4043 #b00000000000000000111111111111111) (= mask!4043 #b00000000000000001111111111111111) (= mask!4043 #b00000000000000011111111111111111) (= mask!4043 #b00000000000000111111111111111111) (= mask!4043 #b00000000000001111111111111111111) (= mask!4043 #b00000000000011111111111111111111) (= mask!4043 #b00000000000111111111111111111111) (= mask!4043 #b00000000001111111111111111111111) (= mask!4043 #b00000000011111111111111111111111) (= mask!4043 #b00000000111111111111111111111111) (= mask!4043 #b00000001111111111111111111111111) (= mask!4043 #b00000011111111111111111111111111) (= mask!4043 #b00000111111111111111111111111111) (= mask!4043 #b00001111111111111111111111111111) (= mask!4043 #b00011111111111111111111111111111) (= mask!4043 #b00111111111111111111111111111111)) (bvsle mask!4043 #b00111111111111111111111111111111)))))

(assert (=> start!134604 d!164395))

(declare-fun d!164401 () Bool)

(assert (=> d!164401 (= (array_inv!39209 a!3462) (bvsge (size!51115 a!3462) #b00000000000000000000000000000000))))

(assert (=> start!134604 d!164401))

(check-sat)
