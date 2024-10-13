(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1108 0)
(declare-sort var908 0)
(declare-sort var318 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var318) void)
(declare-fun cast-from-var1108-to-var318 (var1108) var318)
(declare-fun parent/-1863940065 (var1108) var1108)
(declare-fun property/-1863940065 (var1108) String)
(declare-fun depth/-1863940065 (var1108) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun fullPath/-1863940065 (var1108) String)
(declare-const null-var1108 var1108)
(declare-const null-String String)
(declare-const var3051 var1108) ; Statement: r0 := @this: org.hibernate.boot.model.source.spi.AbstractAttributeKey 
(assert (not (= var3051 null-var1108)))
(declare-const var1047 var1108) ; Statement: r1 := @parameter0: org.hibernate.boot.model.source.spi.AbstractAttributeKey 
(assert (not (= var1047 null-var1108)))
(declare-const var2918 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2918 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1108-to-var318 var3051))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3051!1 var1108)
(declare-const var3051!2 var1108)
(assert (not (= var3051!2 null-var1108)))
(assert (= (parent/-1863940065 var3051!2) var1047)) ; Statement: r0.<org.hibernate.boot.model.source.spi.AbstractAttributeKey: org.hibernate.boot.model.source.spi.AbstractAttributeKey parent> = r1 
(declare-const var3051!3 var1108)
(assert (not (= var3051!3 null-var1108)))
(assert (= (property/-1863940065 var3051!3) var2918)) ; Statement: r0.<org.hibernate.boot.model.source.spi.AbstractAttributeKey: java.lang.String property> = r2 
 ; Statement: if r1 == null goto r11 = "" 
(assert (= var1047 null-var1108)) ; Cond: r1 == null 
(define-const var56 String "") ; Statement: r11 = "" 
(declare-const var3051!4 var1108)
(assert (not (= var3051!4 null-var1108)))
(assert (= (depth/-1863940065 var3051!4) 0)) ; Statement: r0.<org.hibernate.boot.model.source.spi.AbstractAttributeKey: int depth> = 0 
(assert true) ; Non Conditional
(define-const var1486 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1486)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1486!1 String)
(assert (= var1486!1 ""))
(assert true)
(define-const var693 String (append/672562846 var1486!1 var56)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11) 
(declare-const var1486!2 String)
(assert (= var1486!2 (str.++ var1486!1 var56)))
(assert true)
(define-const var653 String (append/672562846 var693 var2918)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var693!1 String)
(assert (= var693!1 (str.++ var693 var2918)))
(assert true)
(define-const var3280 String (toString/-2075883882 var653)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3051!5 var1108)
(assert (not (= var3051!5 null-var1108)))
(assert (= (fullPath/-1863940065 var3051!5) var3280)) ; Statement: r0.<org.hibernate.boot.model.source.spi.AbstractAttributeKey: java.lang.String fullPath> = $r6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1108-to-var318=([org.hibernate.boot.model.source.spi.AbstractAttributeKey], java.lang.Object), parent/-1863940065=([org.hibernate.boot.model.source.spi.AbstractAttributeKey], org.hibernate.boot.model.source.spi.AbstractAttributeKey), property/-1863940065=([org.hibernate.boot.model.source.spi.AbstractAttributeKey], java.lang.String), depth/-1863940065=([org.hibernate.boot.model.source.spi.AbstractAttributeKey], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), fullPath/-1863940065=([org.hibernate.boot.model.source.spi.AbstractAttributeKey], java.lang.String)}
; {var1108=org.hibernate.boot.model.source.spi.AbstractAttributeKey, var3051=r0, var1047=r1, var2918=r2, var908=null_type, var318=java.lang.Object, var56=r11, var1486=$r3, var693=$r4, var653=$r5, var3280=$r6}
; {org.hibernate.boot.model.source.spi.AbstractAttributeKey=var1108, r0=var3051, r1=var1047, r2=var2918, null_type=var908, java.lang.Object=var318, r11=var56, $r3=var1486, $r4=var693, $r5=var653, $r6=var3280}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.model.source.spi.AbstractAttributeKey;	r1 := @parameter0: org.hibernate.boot.model.source.spi.AbstractAttributeKey;	r2 := @parameter1: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.boot.model.source.spi.AbstractAttributeKey: org.hibernate.boot.model.source.spi.AbstractAttributeKey parent> = r1;	r0.<org.hibernate.boot.model.source.spi.AbstractAttributeKey: java.lang.String property> = r2;	if r1 == null goto r11 = "";	r11 = "";	r0.<org.hibernate.boot.model.source.spi.AbstractAttributeKey: int depth> = 0;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<org.hibernate.boot.model.source.spi.AbstractAttributeKey: java.lang.String fullPath> = $r6;	return
;block_num 3