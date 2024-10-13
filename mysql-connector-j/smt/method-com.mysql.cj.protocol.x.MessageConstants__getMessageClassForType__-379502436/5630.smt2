(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var155 0)
(declare-sort var2436 0)
(declare-sort var1101 0)
(declare-sort var2934 0)
(declare-sort var1276 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var155_get/1088891777 (var155 var1101) var1101)
(declare-fun cast-from-Int-to-var1101 (Int) var1101)
(declare-fun cast-from-var1101-to-ClassObject (var1101) ClassObject)
(declare-fun var2934_forNumber/44189936 (Int) var2934)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1031950772 (String var1101) String)
(declare-fun cast-from-var2934-to-var1101 (var2934) var1101)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1276_shouldNotHappen/722502214 (String) var1276)
(declare-const null-Int Int)
(declare-const var2436-MESSAGE_TYPE_TO_CLASS var155)
(declare-const null-ClassObject ClassObject)
(declare-const var2984 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2984 null-Int)))
(define-const var3840 var155 var2436-MESSAGE_TYPE_TO_CLASS) ; Statement: $r0 = <com.mysql.cj.protocol.x.MessageConstants: java.util.Map MESSAGE_TYPE_TO_CLASS> 
(define-const var2996 Int (Int_valueOf/-1371140006 var2984)) ; Statement: $r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(define-const var140 var1101 (var155_get/1088891777 var3840 (cast-from-Int-to-var1101 var2996))) ; Statement: $r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1) 
(define-const var738 ClassObject (cast-from-var1101-to-ClassObject var140)) ; Statement: r3 = (java.lang.Class) $r2 
 ; Statement: if r3 != null goto return r3 
(assert (not (not (= var738 null-ClassObject)))) ; Negate: Cond: r3 != null  
(define-const var1062 var2934 (var2934_forNumber/44189936 var2984)) ; Statement: r4 = staticinvoke <com.mysql.cj.x.protobuf.Mysqlx$ServerMessages$Type: com.mysql.cj.x.protobuf.Mysqlx$ServerMessages$Type forNumber(int)>(i0) 
(define-const var2307 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2307)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2307!1 String)
(assert (= var2307!1 ""))
(assert true)
(define-const var1523 String (append/672562846 var2307!1 "Unknown message type: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown message type: ") 
(declare-const var2307!2 String)
(assert (= var2307!2 (str.++ var2307!1 "Unknown message type: ")))
(assert true)
(define-const var1933 String (append/-1001720160 var1523 var2984)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1523!1 String)
(assert (str.prefixof var1523 var1523!1))
(assert true)
(define-const var1598 String (append/672562846 var1933 " (server messages mapping: ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (server messages mapping: ") 
(declare-const var1933!1 String)
(assert (= var1933!1 (str.++ var1933 " (server messages mapping: ")))
(assert true)
(define-const var2932 String (append/-1031950772 var1598 (cast-from-var2934-to-var1101 var1062))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var1598!1 String)
(assert (str.prefixof var1598 var1598!1))
(assert true)
(define-const var3298 String (append/672562846 var2932 ")")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2932!1 String)
(assert (= var2932!1 (str.++ var2932 ")")))
(assert true)
(define-const var500 String (toString/-2075883882 var3298)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3158 var1276 (var1276_shouldNotHappen/722502214 var500)) ; Statement: $r12 = staticinvoke <com.mysql.cj.exceptions.AssertionFailedException: com.mysql.cj.exceptions.AssertionFailedException shouldNotHappen(java.lang.String)>($r11) 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {Int_valueOf/-1371140006=([int], java.lang.Integer), var155_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var1101=([java.lang.Integer], java.lang.Object), cast-from-var1101-to-ClassObject=([java.lang.Object], java.lang.Class), var2934_forNumber/44189936=([int], com.mysql.cj.x.protobuf.Mysqlx$ServerMessages$Type), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2934-to-var1101=([com.mysql.cj.x.protobuf.Mysqlx$ServerMessages$Type], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1276_shouldNotHappen/722502214=([java.lang.String], com.mysql.cj.exceptions.AssertionFailedException)}
; {var2984=i0, var155=java.util.Map, var2436=com.mysql.cj.protocol.x.MessageConstants, var3840=$r0, var2996=$r1, var1101=java.lang.Object, var140=$r2, var738=r3, var2934=com.mysql.cj.x.protobuf.Mysqlx$ServerMessages$Type, var1062=r4, var2307=$r5, var1523=$r6, var1933=$r7, var1598=$r8, var2932=$r9, var3298=$r10, var500=$r11, var1276=com.mysql.cj.exceptions.AssertionFailedException, var3158=$r12}
; {i0=var2984, java.util.Map=var155, com.mysql.cj.protocol.x.MessageConstants=var2436, $r0=var3840, $r1=var2996, java.lang.Object=var1101, $r2=var140, r3=var738, com.mysql.cj.x.protobuf.Mysqlx$ServerMessages$Type=var2934, r4=var1062, $r5=var2307, $r6=var1523, $r7=var1933, $r8=var1598, $r9=var2932, $r10=var3298, $r11=var500, com.mysql.cj.exceptions.AssertionFailedException=var1276, $r12=var3158}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	$r0 = <com.mysql.cj.protocol.x.MessageConstants: java.util.Map MESSAGE_TYPE_TO_CLASS>;	$r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1);	r3 = (java.lang.Class) $r2;	if r3 != null goto return r3;	r4 = staticinvoke <com.mysql.cj.x.protobuf.Mysqlx$ServerMessages$Type: com.mysql.cj.x.protobuf.Mysqlx$ServerMessages$Type forNumber(int)>(i0);	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown message type: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (server messages mapping: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = staticinvoke <com.mysql.cj.exceptions.AssertionFailedException: com.mysql.cj.exceptions.AssertionFailedException shouldNotHappen(java.lang.String)>($r11);	throw $r12
;block_num 2