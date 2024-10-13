(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var617 0)
(declare-sort var1634 0)
(declare-sort var1386 0)
(declare-sort var1988 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getIndex/-2136393185 (var1386) Int)
(declare-fun seekNonWs/-1252018043 (var617 String var1386) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1988-init () var1988)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1988 String) void)
(declare-const null-var617 var617)
(declare-const null-String String)
(declare-const null-var1386 var1386)
(declare-const var2240 var617) ; Statement: r1 := @this: org.apache.commons.lang3.text.ExtendedMessageFormat 
(assert (not (= var2240 null-var617)))
(declare-const var420 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var420 null-String)))
(declare-const var3352 var1386) ; Statement: r0 := @parameter1: java.text.ParsePosition 
(assert (not (= var3352 null-var1386)))
(assert true)
(define-const var1779 Int (getIndex/-2136393185 var3352)) ; Statement: i0 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert true)
;(assert (seekNonWs/-1252018043 var2240 var420 var3352)) ; Statement: specialinvoke r1.<org.apache.commons.lang3.text.ExtendedMessageFormat: void seekNonWs(java.lang.String,java.text.ParsePosition)>(r2, r0) 

(declare-const var2240!1 var617)
(declare-const var420!1 String)
(declare-const var3352!1 var1386)
(define-const var693 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var693)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var693!1 String)
(assert (= var693!1 ""))
(define-const var2883 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(assert true) ; Non Conditional
 ; Statement: if z1 != 0 goto (branch) 
(assert (not (= (ite var2883 1 0) 0))) ; Cond: z1 != 0 
 ; Statement: if z1 == 0 goto $r23 = new java.lang.IllegalArgumentException 
(assert (not (= (ite var2883 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var2918 var1988 var1988-init) ; Statement: $r21 = new java.lang.IllegalArgumentException 
(define-const var3906 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3906)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3906!1 String)
(assert (= var3906!1 ""))
(assert true)
(define-const var569 String (append/672562846 var3906!1 "Invalid format argument index at position ")) ; Statement: $r11 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid format argument index at position ") 
(declare-const var3906!2 String)
(assert (= var3906!2 (str.++ var3906!1 "Invalid format argument index at position ")))
(assert true)
(define-const var2611 String (append/-1001720160 var569 var1779)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var569!1 String)
(assert (str.prefixof var569 var569!1))
(assert true)
(define-const var1141 String (append/672562846 var2611 ": ")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var2611!1 String)
(assert (= var2611!1 (str.++ var2611 ": ")))
(assert true)
(define-const var199 Int (getIndex/-2136393185 var3352!1)) ; Statement: $i1 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert (not (and true (and (>= var1779 0) (>= (str.len var420!1) var199) (>= var199 var1779)))))
(check-sat)
(get-model)
(get-unsat-core)
; {getIndex/-2136393185=([java.text.ParsePosition], int), seekNonWs/-1252018043=([org.apache.commons.lang3.text.ExtendedMessageFormat, java.lang.String, java.text.ParsePosition], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1988-init=([], java.lang.IllegalArgumentException), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), substring/-1240304868=([java.lang.String, int, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var617=org.apache.commons.lang3.text.ExtendedMessageFormat, var2240=r1, var420=r2, var1634=null_type, var1386=java.text.ParsePosition, var3352=r0, var1779=i0, var693=$r19, var2883=z1, var1988=java.lang.IllegalArgumentException, var2918=$r21, var3906=$r20, var569=$r11, var2611=$r12, var1141=$r14, var199=$i1, var970=$r13, var1347=$r15, var3659=$r16}
; {org.apache.commons.lang3.text.ExtendedMessageFormat=var617, r1=var2240, r2=var420, null_type=var1634, java.text.ParsePosition=var1386, r0=var3352, i0=var1779, $r19=var693, z1=var2883, java.lang.IllegalArgumentException=var1988, $r21=var2918, $r20=var3906, $r11=var569, $r12=var2611, $r14=var1141, $i1=var199, $r13=var970, $r15=var1347, $r16=var3659}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.lang3.text.ExtendedMessageFormat;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.text.ParsePosition;	i0 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	specialinvoke r1.<org.apache.commons.lang3.text.ExtendedMessageFormat: void seekNonWs(java.lang.String,java.text.ParsePosition)>(r2, r0);	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	z1 = 0;	if z1 != 0 goto (branch);	if z1 == 0 goto $r23 = new java.lang.IllegalArgumentException;	$r21 = new java.lang.IllegalArgumentException;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid format argument index at position ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$i1 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	$r13 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(i0, $i1);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r16);	throw $r21
;block_num 4