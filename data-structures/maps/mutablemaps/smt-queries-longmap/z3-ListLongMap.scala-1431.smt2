; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27744 () Bool)

(assert start!27744)

(declare-fun res!148077 () Bool)

(declare-fun e!181216 () Bool)

(assert (=> start!27744 (=> (not res!148077) (not e!181216))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27744 (= res!148077 (validMask!0 mask!3809))))

(assert (=> start!27744 e!181216))

(assert (=> start!27744 true))

(declare-datatypes ((array!14269 0))(
  ( (array!14270 (arr!6770 (Array (_ BitVec 32) (_ BitVec 64))) (size!7122 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14269)

(declare-fun array_inv!4724 (array!14269) Bool)

(assert (=> start!27744 (array_inv!4724 a!3312)))

(declare-fun b!285886 () Bool)

(declare-fun res!148076 () Bool)

(assert (=> b!285886 (=> (not res!148076) (not e!181216))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!285886 (= res!148076 (and (= (size!7122 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7122 a!3312))))))

(declare-fun b!285887 () Bool)

(declare-fun res!148075 () Bool)

(assert (=> b!285887 (=> (not res!148075) (not e!181216))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!285887 (= res!148075 (validKeyInArray!0 k0!2524))))

(declare-fun b!285888 () Bool)

(assert (=> b!285888 (= e!181216 (and (bvslt #b00000000000000000000000000000000 (size!7122 a!3312)) (bvsge (size!7122 a!3312) #b01111111111111111111111111111111)))))

(assert (= (and start!27744 res!148077) b!285886))

(assert (= (and b!285886 res!148076) b!285887))

(assert (= (and b!285887 res!148075) b!285888))

(declare-fun m!300727 () Bool)

(assert (=> start!27744 m!300727))

(declare-fun m!300729 () Bool)

(assert (=> start!27744 m!300729))

(declare-fun m!300731 () Bool)

(assert (=> b!285887 m!300731))

(check-sat (not start!27744) (not b!285887))
(check-sat)
(get-model)

(declare-fun d!65829 () Bool)

(assert (=> d!65829 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!27744 d!65829))

(declare-fun d!65835 () Bool)

(assert (=> d!65835 (= (array_inv!4724 a!3312) (bvsge (size!7122 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!27744 d!65835))

(declare-fun d!65837 () Bool)

(assert (=> d!65837 (= (validKeyInArray!0 k0!2524) (and (not (= k0!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!285887 d!65837))

(check-sat)
