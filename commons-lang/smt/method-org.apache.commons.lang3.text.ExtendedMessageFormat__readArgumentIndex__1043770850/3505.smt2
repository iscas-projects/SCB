(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var765 0)
(declare-sort var3152 0)
(declare-sort var2904 0)
(declare-sort var173 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getIndex/-2136393185 (var2904) Int)
(declare-fun seekNonWs/-1252018043 (var765 String var2904) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var173-init () var173)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var173 String) void)
(declare-const null-var765 var765)
(declare-const null-String String)
(declare-const null-var2904 var2904)
(declare-const var1584 var765) ; Statement: r1 := @this: org.apache.commons.lang3.text.ExtendedMessageFormat 
(assert (not (= var1584 null-var765)))
(declare-const var3269 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3269 null-String)))
(declare-const var1694 var2904) ; Statement: r0 := @parameter1: java.text.ParsePosition 
(assert (not (= var1694 null-var2904)))
(assert true)
(define-const var789 Int (getIndex/-2136393185 var1694)) ; Statement: i0 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert true)
;(assert (seekNonWs/-1252018043 var1584 var3269 var1694)) ; Statement: specialinvoke r1.<org.apache.commons.lang3.text.ExtendedMessageFormat: void seekNonWs(java.lang.String,java.text.ParsePosition)>(r2, r0) 

(declare-const var1584!1 var765)
(declare-const var3269!1 String)
(declare-const var1694!1 var2904)
(define-const var1397 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1397)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1397!1 String)
(assert (= var1397!1 ""))
(define-const var735 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(assert true) ; Non Conditional
 ; Statement: if z1 != 0 goto (branch) 
(assert (not (= (ite var735 1 0) 0))) ; Cond: z1 != 0 
 ; Statement: if z1 == 0 goto $r23 = new java.lang.IllegalArgumentException 
(assert (= (ite var735 1 0) 0)) ; Cond: z1 == 0 
(define-const var2577 var173 var173-init) ; Statement: $r23 = new java.lang.IllegalArgumentException 
(define-const var1659 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1659)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1659!1 String)
(assert (= var1659!1 ""))
(assert true)
(define-const var2096 String (append/672562846 var1659!1 "Unterminated format element at position ")) ; Statement: $r6 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unterminated format element at position ") 
(declare-const var1659!2 String)
(assert (= var1659!2 (str.++ var1659!1 "Unterminated format element at position ")))
(assert true)
(define-const var3327 String (append/-1001720160 var2096 var789)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2096!1 String)
(assert (str.prefixof var2096 var2096!1))
(assert true)
(define-const var399 String (toString/-2075883882 var3327)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2577 var399)) ; Statement: specialinvoke $r23.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var2577!1 var173)
(declare-const var399!1 String)
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {getIndex/-2136393185=([java.text.ParsePosition], int), seekNonWs/-1252018043=([org.apache.commons.lang3.text.ExtendedMessageFormat, java.lang.String, java.text.ParsePosition], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var173-init=([], java.lang.IllegalArgumentException), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var765=org.apache.commons.lang3.text.ExtendedMessageFormat, var1584=r1, var3269=r2, var3152=null_type, var2904=java.text.ParsePosition, var1694=r0, var789=i0, var1397=$r19, var735=z1, var173=java.lang.IllegalArgumentException, var2577=$r23, var1659=$r22, var2096=$r6, var3327=$r7, var399=$r8}
; {org.apache.commons.lang3.text.ExtendedMessageFormat=var765, r1=var1584, r2=var3269, null_type=var3152, java.text.ParsePosition=var2904, r0=var1694, i0=var789, $r19=var1397, z1=var735, java.lang.IllegalArgumentException=var173, $r23=var2577, $r22=var1659, $r6=var2096, $r7=var3327, $r8=var399}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.lang3.text.ExtendedMessageFormat;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.text.ParsePosition;	i0 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	specialinvoke r1.<org.apache.commons.lang3.text.ExtendedMessageFormat: void seekNonWs(java.lang.String,java.text.ParsePosition)>(r2, r0);	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	z1 = 0;	if z1 != 0 goto (branch);	if z1 == 0 goto $r23 = new java.lang.IllegalArgumentException;	$r23 = new java.lang.IllegalArgumentException;	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unterminated format element at position ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r23.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r23
;block_num 4