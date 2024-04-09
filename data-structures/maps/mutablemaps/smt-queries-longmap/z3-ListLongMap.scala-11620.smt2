; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135620 () Bool)

(assert start!135620)

(declare-fun res!1075774 () Bool)

(declare-fun e!878037 () Bool)

(assert (=> start!135620 (=> (not res!1075774) (not e!878037))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135620 (= res!1075774 (validMask!0 mask!898))))

(assert (=> start!135620 e!878037))

(assert (=> start!135620 true))

(declare-datatypes ((array!105240 0))(
  ( (array!105241 (arr!50762 (Array (_ BitVec 32) (_ BitVec 64))) (size!51313 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105240)

(declare-fun array_inv!39407 (array!105240) Bool)

(assert (=> start!135620 (array_inv!39407 _keys!605)))

(declare-fun b!1574343 () Bool)

(declare-fun res!1075775 () Bool)

(assert (=> b!1574343 (=> (not res!1075775) (not e!878037))))

(assert (=> b!1574343 (= res!1075775 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51313 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574344 () Bool)

(declare-fun res!1075773 () Bool)

(assert (=> b!1574344 (=> (not res!1075773) (not e!878037))))

(declare-fun k0!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574344 (= res!1075773 (validKeyInArray!0 k0!761))))

(declare-fun b!1574345 () Bool)

(declare-fun lt!674731 () (_ BitVec 32))

(assert (=> b!1574345 (= e!878037 (or (bvslt lt!674731 #b00000000000000000000000000000000) (bvsge lt!674731 (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574345 (= lt!674731 (toIndex!0 k0!761 mask!898))))

(assert (= (and start!135620 res!1075774) b!1574343))

(assert (= (and b!1574343 res!1075775) b!1574344))

(assert (= (and b!1574344 res!1075773) b!1574345))

(declare-fun m!1447623 () Bool)

(assert (=> start!135620 m!1447623))

(declare-fun m!1447625 () Bool)

(assert (=> start!135620 m!1447625))

(declare-fun m!1447627 () Bool)

(assert (=> b!1574344 m!1447627))

(declare-fun m!1447629 () Bool)

(assert (=> b!1574345 m!1447629))

(check-sat (not start!135620) (not b!1574345) (not b!1574344))
(check-sat)
(get-model)

(declare-fun d!165147 () Bool)

(assert (=> d!165147 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!135620 d!165147))

(declare-fun d!165155 () Bool)

(assert (=> d!165155 (= (array_inv!39407 _keys!605) (bvsge (size!51313 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!135620 d!165155))

(declare-fun d!165157 () Bool)

(declare-fun lt!674740 () (_ BitVec 32))

(declare-fun lt!674739 () (_ BitVec 32))

(assert (=> d!165157 (= lt!674740 (bvmul (bvxor lt!674739 (bvlshr lt!674739 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165157 (= lt!674739 ((_ extract 31 0) (bvand (bvxor k0!761 (bvlshr k0!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165157 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1075785 (let ((h!38411 ((_ extract 31 0) (bvand (bvxor k0!761 (bvlshr k0!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!141931 (bvmul (bvxor h!38411 (bvlshr h!38411 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!141931 (bvlshr x!141931 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1075785 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1075785 #b00000000000000000000000000000000))))))

(assert (=> d!165157 (= (toIndex!0 k0!761 mask!898) (bvand (bvxor lt!674740 (bvlshr lt!674740 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1574345 d!165157))

(declare-fun d!165163 () Bool)

(assert (=> d!165163 (= (validKeyInArray!0 k0!761) (and (not (= k0!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1574344 d!165163))

(check-sat)
