(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2643 0)
(declare-sort var3464 0)
(declare-sort var1986 0)
(declare-sort var73 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getIndex/-2136393185 (var1986) Int)
(declare-fun seekNonWs/-1252018043 (var2643 String var1986) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var73-init () var73)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var73 String) void)
(declare-const null-var2643 var2643)
(declare-const null-String String)
(declare-const null-var1986 var1986)
(declare-const var1294 var2643) ; Statement: r1 := @this: org.apache.commons.lang3.text.ExtendedMessageFormat 
(assert (not (= var1294 null-var2643)))
(declare-const var970 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var970 null-String)))
(declare-const var1239 var1986) ; Statement: r0 := @parameter1: java.text.ParsePosition 
(assert (not (= var1239 null-var1986)))
(assert true)
(define-const var530 Int (getIndex/-2136393185 var1239)) ; Statement: i0 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert true)
;(assert (seekNonWs/-1252018043 var1294 var970 var1239)) ; Statement: specialinvoke r1.<org.apache.commons.lang3.text.ExtendedMessageFormat: void seekNonWs(java.lang.String,java.text.ParsePosition)>(r2, r0) 

(declare-const var1294!1 var2643)
(declare-const var970!1 String)
(declare-const var1239!1 var1986)
(assert true)
(define-const var719 Int (getIndex/-2136393185 var1239!1)) ; Statement: i1 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(define-const var1140 Int 1) ; Statement: i7 = 1 
(assert true) ; Non Conditional
(assert true)
(define-const var884 Int (getIndex/-2136393185 var1239!1)) ; Statement: $i3 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert true)
(define-const var2154 Int (length/-134980193 var970!1)) ; Statement: $i2 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if $i3 >= $i2 goto $r10 = new java.lang.IllegalArgumentException 
(assert (>= var884 var2154)) ; Cond: $i3 >= $i2 
(define-const var298 var73 var73-init) ; Statement: $r10 = new java.lang.IllegalArgumentException 
(define-const var807 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var807)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var807!1 String)
(assert (= var807!1 ""))
(assert true)
(define-const var1148 String (append/672562846 var807!1 "Unterminated format element at position ")) ; Statement: $r5 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unterminated format element at position ") 
(declare-const var807!2 String)
(assert (= var807!2 (str.++ var807!1 "Unterminated format element at position ")))
(assert true)
(define-const var1385 String (append/-1001720160 var1148 var530)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1148!1 String)
(assert (str.prefixof var1148 var1148!1))
(assert true)
(define-const var1996 String (toString/-2075883882 var1385)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var298 var1996)) ; Statement: specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var298!1 var73)
(declare-const var1996!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {getIndex/-2136393185=([java.text.ParsePosition], int), seekNonWs/-1252018043=([org.apache.commons.lang3.text.ExtendedMessageFormat, java.lang.String, java.text.ParsePosition], void), length/-134980193=([java.lang.String], int), var73-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2643=org.apache.commons.lang3.text.ExtendedMessageFormat, var1294=r1, var970=r2, var3464=null_type, var1986=java.text.ParsePosition, var1239=r0, var530=i0, var719=i1, var1140=i7, var884=$i3, var2154=$i2, var73=java.lang.IllegalArgumentException, var298=$r10, var807=$r9, var1148=$r5, var1385=$r6, var1996=$r7}
; {org.apache.commons.lang3.text.ExtendedMessageFormat=var2643, r1=var1294, r2=var970, null_type=var3464, java.text.ParsePosition=var1986, r0=var1239, i0=var530, i1=var719, i7=var1140, $i3=var884, $i2=var2154, java.lang.IllegalArgumentException=var73, $r10=var298, $r9=var807, $r5=var1148, $r6=var1385, $r7=var1996}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.lang3.text.ExtendedMessageFormat;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.text.ParsePosition;	i0 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	specialinvoke r1.<org.apache.commons.lang3.text.ExtendedMessageFormat: void seekNonWs(java.lang.String,java.text.ParsePosition)>(r2, r0);	i1 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	i7 = 1;	$i3 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	$i2 = virtualinvoke r2.<java.lang.String: int length()>();	if $i3 >= $i2 goto $r10 = new java.lang.IllegalArgumentException;	$r10 = new java.lang.IllegalArgumentException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unterminated format element at position ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r10
;block_num 3