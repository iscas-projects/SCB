(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1578 0)
(declare-sort var1657 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var1657-init () var1657)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/395379026 (var1657 String) void)
(declare-const null-String String)
(declare-const var3518 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3518 null-String)))
(assert true)
(define-const var2570 (Array Int String) (split/-636890950 var3518 "/")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("/") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var3518 "/") i) (re.++ (re.* re.all) (str.to_re "/") (re.* re.all))))))
(define-const var2223 Int (getLength-Arr-String-1 var2570)) ; Statement: $i0 = lengthof r1 
 ; Statement: if $i0 != 1 goto $i1 = lengthof r1 
(assert (not (not (= var2223 1)))) ; Negate: Cond: $i0 != 1  
(define-const var2385 var1657 var1657-init) ; Statement: $r3 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.InvalidProtocolBufferException 
(define-const var2444 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2444)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2444!1 String)
(assert (= var2444!1 ""))
(assert true)
(define-const var2498 String (append/672562846 var2444!1 "Invalid type url found: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid type url found: ") 
(declare-const var2444!2 String)
(assert (= var2444!2 (str.++ var2444!1 "Invalid type url found: ")))
(assert true)
(define-const var199 String (append/672562846 var2498 var3518)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2498!1 String)
(assert (= var2498!1 (str.++ var2498 var3518)))
(assert true)
(define-const var1227 String (toString/-2075883882 var199)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/395379026 var2385 var1227)) ; Statement: specialinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.InvalidProtocolBufferException: void <init>(java.lang.String)>($r7) 

(declare-const var2385!1 var1657)
(declare-const var1227!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), var1657-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.InvalidProtocolBufferException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/395379026=([com.google.javascript.jscomp.jarjar.com.google.protobuf.InvalidProtocolBufferException, java.lang.String], void)}
; {var3518=r0, var1578=null_type, var2570=r1, var2223=$i0, var1657=com.google.javascript.jscomp.jarjar.com.google.protobuf.InvalidProtocolBufferException, var2385=$r3, var2444=$r4, var2498=$r5, var199=$r6, var1227=$r7}
; {r0=var3518, null_type=var1578, r1=var2570, $i0=var2223, com.google.javascript.jscomp.jarjar.com.google.protobuf.InvalidProtocolBufferException=var1657, $r3=var2385, $r4=var2444, $r5=var2498, $r6=var199, $r7=var1227}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("/");	$i0 = lengthof r1;	if $i0 != 1 goto $i1 = lengthof r1;	$r3 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.InvalidProtocolBufferException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid type url found: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.InvalidProtocolBufferException: void <init>(java.lang.String)>($r7);	throw $r3
;block_num 2