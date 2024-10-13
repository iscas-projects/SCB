(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1346 0)
(declare-sort var3873 0)
(declare-sort var3048 0)
(declare-sort var288 0)
(declare-sort var286 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3048) void)
(declare-fun cast-from-var1346-to-var3048 (var1346) var3048)
(declare-fun var288_requireNonNull/1378936425 (var3048 String) var3048)
(declare-fun cast-from-String-to-var3048 (String) var3048)
(declare-fun cast-from-__Array__Int__Int__-to-var3048 ((Array Int Int)) var3048)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var286-init () var286)
(declare-fun <init>/875830710 (var286 String) void)
(declare-const null-var1346 var1346)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1513 var1346) ; Statement: r0 := @this: org.apache.commons.io.ByteOrderMark 
(assert (not (= var1513 null-var1346)))
(declare-const var1104 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1104 null-String)))
(declare-const var277 (Array Int Int)) ; Statement: r2 := @parameter1: int[] 
(assert (not (= var277 null-__Array__Int__Int__)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1346-to-var3048 var1513))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1513!1 var1346)
;(assert (var288_requireNonNull/1378936425 (cast-from-String-to-var3048 var1104) "charsetName")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r1, "charsetName") 

(declare-const var1104!1 String)
(declare-const var1579 String)
;(assert (var288_requireNonNull/1378936425 (cast-from-__Array__Int__Int__-to-var3048 var277) "bytes")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r2, "bytes") 

(declare-const var277!1 (Array Int Int))
(declare-const var3276 String)
(assert true)
(define-const var3038 Bool (isEmpty/-1285796103 var1104!1)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $i0 = lengthof r2 
(assert (not (= (ite var3038 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var685 var286 var286-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var685 "No charsetName specified")) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("No charsetName specified") 

(declare-const var685!1 var286)
(declare-const var342 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1346-to-var3048=([org.apache.commons.io.ByteOrderMark], java.lang.Object), var288_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-String-to-var3048=([java.lang.String], java.lang.Object), cast-from-__Array__Int__Int__-to-var3048=([int[]], java.lang.Object), isEmpty/-1285796103=([java.lang.String], boolean), var286-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1346=org.apache.commons.io.ByteOrderMark, var1513=r0, var1104=r1, var3873=null_type, var277=r2, var3048=java.lang.Object, var288=java.util.Objects, var1579="charsetName", var3276="bytes", var3038=$z0, var286=java.lang.IllegalArgumentException, var685=$r6, var342="No charsetName specified"}
; {org.apache.commons.io.ByteOrderMark=var1346, r0=var1513, r1=var1104, null_type=var3873, r2=var277, java.lang.Object=var3048, java.util.Objects=var288, "charsetName"=var1579, "bytes"=var3276, $z0=var3038, java.lang.IllegalArgumentException=var286, $r6=var685, "No charsetName specified"=var342}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: org.apache.commons.io.ByteOrderMark;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: int[];	specialinvoke r0.<java.lang.Object: void <init>()>();	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r1, "charsetName");	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r2, "bytes");	$z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $i0 = lengthof r2;	$r6 = new java.lang.IllegalArgumentException;	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("No charsetName specified");	throw $r6
;block_num 2