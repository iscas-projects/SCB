(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var276 0)
(declare-sort var844 0)
(declare-sort var1649 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var844_appendLiteralGlobSection/-427210499 (String String Int Int) void)
(declare-fun var1649-init () var1649)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1649 String) void)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3330 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3330 null-String)))
(declare-const var2664 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2664 null-Bool)))
(define-const var1257 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1257)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1257!1 String)
(assert (= var1257!1 ""))
(define-const var888 Int 0) ; Statement: i12 = 0 
(define-const var709 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(assert true)
(define-const var3023 Int (length/-134980193 var3330)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var868 Int 0) ; Statement: i13 = 0 
(assert true) ; Non Conditional
 ; Statement: if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (>= var868 var3023))) ; Negate: Cond: i13 >= i0  
(assert (and true (and (> (str.len var3330) var868) (<= 0 var868))))
(define-const var526 Int (charAt/698050440 var3330 var868)) ; Statement: c2 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i13) 
 ; Statement: if z1 != 0 goto z1 = 0 
(assert (not (not (= (ite var709 1 0) 0)))) ; Negate: Cond: z1 != 0  
(define-const var368 Int (cast-from-Int-to-Int var526)) ; Statement: $i15 = (int) c2 
 ; Statement: if $i15 != 63 goto $i16 = (int) c2 
(assert (not (= var368 63))) ; Cond: $i15 != 63 
(define-const var3135 Int (cast-from-Int-to-Int var526)) ; Statement: $i16 = (int) c2 
 ; Statement: if $i16 != 42 goto $i20 = (int) c2 
(assert (not (not (= var3135 42)))) ; Negate: Cond: $i16 != 42  
;(assert (var844_appendLiteralGlobSection/-427210499 var1257!1 var3330 var888 var868)) ; Statement: staticinvoke <freemarker.template.utility.StringUtil: void appendLiteralGlobSection(java.lang.StringBuilder,java.lang.String,int,int)>($r21, r1, i12, i13) 

(declare-const var1257!2 String)
(declare-const var3330!1 String)
(declare-const var888!1 Int)
(declare-const var868!1 Int)
(define-const var3174 Int (+ var868!1 1)) ; Statement: $i3 = i13 + 1 
 ; Statement: if $i3 >= i0 goto virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[^/]*") 
(assert (not (>= var3174 var3023))) ; Negate: Cond: $i3 >= i0  
(define-const var568 Int (+ var868!1 1)) ; Statement: $i4 = i13 + 1 
(assert (not (and true (and (> (str.len var3330!1) var568) (<= 0 var568)))))
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var844_appendLiteralGlobSection/-427210499=([java.lang.StringBuilder, java.lang.String, int, int], void), var1649-init=([], java.lang.IllegalArgumentException), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3330=r1, var276=null_type, var2664=z0, var1257=$r21, var888=i12, var709=z1, var3023=i0, var868=i13, var526=c2, var368=$i15, var3135=$i16, var844=freemarker.template.utility.StringUtil, var3174=$i3, var568=$i4, var510=$c5, var3515=$i17, var3911=$i10, var101=$c11, var232=$i18, var1649=java.lang.IllegalArgumentException, var1630=$r23, var1414=$r22, var3956=$r18, var3537=$r19, var1123=$r20}
; {r1=var3330, null_type=var276, z0=var2664, $r21=var1257, i12=var888, z1=var709, i0=var3023, i13=var868, c2=var526, $i15=var368, $i16=var3135, freemarker.template.utility.StringUtil=var844, $i3=var3174, $i4=var568, $c5=var510, $i17=var3515, $i10=var3911, $c11=var101, $i18=var232, java.lang.IllegalArgumentException=var1649, $r23=var1630, $r22=var1414, $r18=var3956, $r19=var3537, $r20=var1123}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	i12 = 0;	z1 = 0;	i0 = virtualinvoke r1.<java.lang.String: int length()>();	i13 = 0;	if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>();	c2 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i13);	if z1 != 0 goto z1 = 0;	$i15 = (int) c2;	if $i15 != 63 goto $i16 = (int) c2;	$i16 = (int) c2;	if $i16 != 42 goto $i20 = (int) c2;	staticinvoke <freemarker.template.utility.StringUtil: void appendLiteralGlobSection(java.lang.StringBuilder,java.lang.String,int,int)>($r21, r1, i12, i13);	$i3 = i13 + 1;	if $i3 >= i0 goto virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[^/]*");	$i4 = i13 + 1;	$c5 = virtualinvoke r1.<java.lang.String: char charAt(int)>($i4);	$i17 = (int) $c5;	if $i17 != 42 goto virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[^/]*");	if i13 == 0 goto $i6 = i13 + 2;	$i10 = i13 - 1;	$c11 = virtualinvoke r1.<java.lang.String: char charAt(int)>($i10);	$i18 = (int) $c11;	if $i18 == 47 goto $i6 = i13 + 2;	$r23 = new java.lang.IllegalArgumentException;	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The \"**\" wildcard must be directly after a \"/\" or it must be at the beginning, in this glob: ");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r23.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r20);	throw $r23
;block_num 10