; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118014 () Bool)

(assert start!118014)

(declare-fun b!1381856 () Bool)

(declare-fun e!783311 () Bool)

(assert (=> b!1381856 (= e!783311 (not true))))

(declare-datatypes ((array!94321 0))(
  ( (array!94322 (arr!45539 (Array (_ BitVec 32) (_ BitVec 64))) (size!46090 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94321)

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94321 (_ BitVec 32)) Bool)

(assert (=> b!1381856 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!94322 (store (arr!45539 a!2971) i!1094 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46090 a!2971)) mask!3034)))

(declare-datatypes ((Unit!45979 0))(
  ( (Unit!45980) )
))
(declare-fun lt!608257 () Unit!45979)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 (array!94321 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45979)

(assert (=> b!1381856 (= lt!608257 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2971 i!1094 #b00000000000000000000000000000000 mask!3034))))

(declare-fun b!1381857 () Bool)

(declare-fun res!923594 () Bool)

(assert (=> b!1381857 (=> (not res!923594) (not e!783311))))

(assert (=> b!1381857 (= res!923594 (and (not (= (select (arr!45539 a!2971) i!1094) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45539 a!2971) i!1094) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt #b00000000000000000000000000000000 (size!46090 a!2971))))))

(declare-fun b!1381858 () Bool)

(declare-fun res!923593 () Bool)

(assert (=> b!1381858 (=> (not res!923593) (not e!783311))))

(declare-datatypes ((List!32253 0))(
  ( (Nil!32250) (Cons!32249 (h!33458 (_ BitVec 64)) (t!46954 List!32253)) )
))
(declare-fun arrayNoDuplicates!0 (array!94321 (_ BitVec 32) List!32253) Bool)

(assert (=> b!1381858 (= res!923593 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32250))))

(declare-fun b!1381859 () Bool)

(declare-fun res!923596 () Bool)

(assert (=> b!1381859 (=> (not res!923596) (not e!783311))))

(assert (=> b!1381859 (= res!923596 (and (= (size!46090 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46090 a!2971))))))

(declare-fun b!1381860 () Bool)

(declare-fun res!923597 () Bool)

(assert (=> b!1381860 (=> (not res!923597) (not e!783311))))

(assert (=> b!1381860 (= res!923597 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1381861 () Bool)

(declare-fun res!923595 () Bool)

(assert (=> b!1381861 (=> (not res!923595) (not e!783311))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381861 (= res!923595 (validKeyInArray!0 (select (arr!45539 a!2971) i!1094)))))

(declare-fun res!923598 () Bool)

(assert (=> start!118014 (=> (not res!923598) (not e!783311))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118014 (= res!923598 (validMask!0 mask!3034))))

(assert (=> start!118014 e!783311))

(assert (=> start!118014 true))

(declare-fun array_inv!34484 (array!94321) Bool)

(assert (=> start!118014 (array_inv!34484 a!2971)))

(assert (= (and start!118014 res!923598) b!1381859))

(assert (= (and b!1381859 res!923596) b!1381861))

(assert (= (and b!1381861 res!923595) b!1381858))

(assert (= (and b!1381858 res!923593) b!1381860))

(assert (= (and b!1381860 res!923597) b!1381857))

(assert (= (and b!1381857 res!923594) b!1381856))

(declare-fun m!1267095 () Bool)

(assert (=> b!1381860 m!1267095))

(declare-fun m!1267097 () Bool)

(assert (=> b!1381858 m!1267097))

(declare-fun m!1267099 () Bool)

(assert (=> b!1381856 m!1267099))

(declare-fun m!1267101 () Bool)

(assert (=> b!1381856 m!1267101))

(declare-fun m!1267103 () Bool)

(assert (=> b!1381856 m!1267103))

(declare-fun m!1267105 () Bool)

(assert (=> b!1381857 m!1267105))

(declare-fun m!1267107 () Bool)

(assert (=> start!118014 m!1267107))

(declare-fun m!1267109 () Bool)

(assert (=> start!118014 m!1267109))

(assert (=> b!1381861 m!1267105))

(assert (=> b!1381861 m!1267105))

(declare-fun m!1267111 () Bool)

(assert (=> b!1381861 m!1267111))

(check-sat (not b!1381861) (not b!1381856) (not start!118014) (not b!1381860) (not b!1381858))
