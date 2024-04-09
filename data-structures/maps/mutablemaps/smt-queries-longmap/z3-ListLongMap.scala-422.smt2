; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7872 () Bool)

(assert start!7872)

(declare-fun res!28740 () Bool)

(declare-fun e!31992 () Bool)

(assert (=> start!7872 (=> (not res!28740) (not e!31992))))

(declare-fun mask!2234 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7872 (= res!28740 (validMask!0 mask!2234))))

(assert (=> start!7872 e!31992))

(assert (=> start!7872 true))

(declare-datatypes ((array!3218 0))(
  ( (array!3219 (arr!1542 (Array (_ BitVec 32) (_ BitVec 64))) (size!1764 (_ BitVec 32))) )
))
(declare-fun _keys!1794 () array!3218)

(declare-fun array_inv!893 (array!3218) Bool)

(assert (=> start!7872 (array_inv!893 _keys!1794)))

(declare-fun b!49719 () Bool)

(assert (=> b!49719 (= e!31992 (and (= (size!1764 _keys!1794) (bvadd #b00000000000000000000000000000001 mask!2234)) (bvslt (bvadd #b00000000000000000000000000000001 mask!2234) #b00000000000000000000000000000000)))))

(assert (= (and start!7872 res!28740) b!49719))

(declare-fun m!43105 () Bool)

(assert (=> start!7872 m!43105))

(declare-fun m!43107 () Bool)

(assert (=> start!7872 m!43107))

(check-sat (not start!7872))
(check-sat)
(get-model)

(declare-fun d!9989 () Bool)

(assert (=> d!9989 (= (validMask!0 mask!2234) (and (or (= mask!2234 #b00000000000000000000000000000111) (= mask!2234 #b00000000000000000000000000001111) (= mask!2234 #b00000000000000000000000000011111) (= mask!2234 #b00000000000000000000000000111111) (= mask!2234 #b00000000000000000000000001111111) (= mask!2234 #b00000000000000000000000011111111) (= mask!2234 #b00000000000000000000000111111111) (= mask!2234 #b00000000000000000000001111111111) (= mask!2234 #b00000000000000000000011111111111) (= mask!2234 #b00000000000000000000111111111111) (= mask!2234 #b00000000000000000001111111111111) (= mask!2234 #b00000000000000000011111111111111) (= mask!2234 #b00000000000000000111111111111111) (= mask!2234 #b00000000000000001111111111111111) (= mask!2234 #b00000000000000011111111111111111) (= mask!2234 #b00000000000000111111111111111111) (= mask!2234 #b00000000000001111111111111111111) (= mask!2234 #b00000000000011111111111111111111) (= mask!2234 #b00000000000111111111111111111111) (= mask!2234 #b00000000001111111111111111111111) (= mask!2234 #b00000000011111111111111111111111) (= mask!2234 #b00000000111111111111111111111111) (= mask!2234 #b00000001111111111111111111111111) (= mask!2234 #b00000011111111111111111111111111) (= mask!2234 #b00000111111111111111111111111111) (= mask!2234 #b00001111111111111111111111111111) (= mask!2234 #b00011111111111111111111111111111) (= mask!2234 #b00111111111111111111111111111111)) (bvsle mask!2234 #b00111111111111111111111111111111)))))

(assert (=> start!7872 d!9989))

(declare-fun d!9995 () Bool)

(assert (=> d!9995 (= (array_inv!893 _keys!1794) (bvsge (size!1764 _keys!1794) #b00000000000000000000000000000000))))

(assert (=> start!7872 d!9995))

(check-sat)
