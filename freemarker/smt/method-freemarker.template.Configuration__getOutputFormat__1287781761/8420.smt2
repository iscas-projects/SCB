(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2046 0)
(declare-sort var978 0)
(declare-sort var1413 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun var1413-init () var1413)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1413 String) void)
(declare-const null-var2046 var2046)
(declare-const null-String String)
(declare-const var2166 var2046) ; Statement: r1 := @this: freemarker.template.Configuration 
(assert (not (= var2166 null-var2046)))
(declare-const var462 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var462 null-String)))
(assert true)
(define-const var3600 Int (length/-134980193 var462)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var3600 0))) ; Cond: $i0 != 0 
(assert true)
(define-const var3799 Int (length/-134980193 var462)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3310 Int (- var3799 1)) ; Statement: $i2 = $i1 - 1 
(assert (and true (and (> (str.len var462) var3310) (<= 0 var3310))))
(define-const var1119 Int (charAt/698050440 var462 var3310)) ; Statement: $c3 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i2) 
(define-const var3687 Int (cast-from-Int-to-Int var1119)) ; Statement: $i8 = (int) $c3 
 ; Statement: if $i8 != 125 goto $r2 = r1.<freemarker.template.Configuration: java.util.Map registeredCustomOutputFormats> 
(assert (not (not (= var3687 125)))) ; Negate: Cond: $i8 != 125  
(assert true)
(define-const var1698 Int (indexOf/-1037706067 var462 123)) ; Statement: i7 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(123) 
(define-const var2802 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if i7 != $i10 goto $r19 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i7) 
(assert (not (not (= var1698 var2802)))) ; Negate: Cond: i7 != $i10  
(define-const var3245 var1413 var1413-init) ; Statement: $r34 = new java.lang.IllegalArgumentException 
(define-const var2911 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2911)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2911!1 String)
(assert (= var2911!1 ""))
(assert true)
(define-const var3522 String (append/672562846 var2911!1 "Missing opening \u0027{\u0027 in: ")) ; Statement: $r24 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Missing opening \'{\' in: ") 
(declare-const var2911!2 String)
(assert (= var2911!2 (str.++ var2911!1 "Missing opening \u0027{\u0027 in: ")))
(assert true)
(define-const var2578 String (append/672562846 var3522 var462)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3522!1 String)
(assert (= var3522!1 (str.++ var3522 var462)))
(assert true)
(define-const var864 String (toString/-2075883882 var2578)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3245 var864)) ; Statement: specialinvoke $r34.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r26) 

(declare-const var3245!1 var1413)
(declare-const var864!1 String)
 ; Statement: throw $r34 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), indexOf/-1037706067=([java.lang.String, int], int), var1413-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2046=freemarker.template.Configuration, var2166=r1, var462=r0, var978=null_type, var3600=$i0, var3799=$i1, var3310=$i2, var1119=$c3, var3687=$i8, var1698=i7, var2802=$i10, var1413=java.lang.IllegalArgumentException, var3245=$r34, var2911=$r33, var3522=$r24, var2578=$r25, var864=$r26}
; {freemarker.template.Configuration=var2046, r1=var2166, r0=var462, null_type=var978, $i0=var3600, $i1=var3799, $i2=var3310, $c3=var1119, $i8=var3687, i7=var1698, $i10=var2802, java.lang.IllegalArgumentException=var1413, $r34=var3245, $r33=var2911, $r24=var3522, $r25=var2578, $r26=var864}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: int indexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: int indexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.template.Configuration;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 != 0 goto $i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i2 = $i1 - 1;	$c3 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i2);	$i8 = (int) $c3;	if $i8 != 125 goto $r2 = r1.<freemarker.template.Configuration: java.util.Map registeredCustomOutputFormats>;	i7 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(123);	$i10 = (int) -1;	if i7 != $i10 goto $r19 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i7);	$r34 = new java.lang.IllegalArgumentException;	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Missing opening \'{\' in: ");	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r34.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r26);	throw $r34
;block_num 4