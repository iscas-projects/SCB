(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2790 0)
(declare-sort var2617 0)
(declare-sort var47 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun skipWS/-1577827613 (var2790 String Int) Int)
(declare-fun skipUntil/297438510 (var2790 String Int String) Int)
(declare-fun var47-init () var47)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1832852593 (var47 String) void)
(declare-const null-var2790 var2790)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2865 var2790) ; Statement: r0 := @this: org.apache.ibatis.builder.ParameterExpression 
(assert (not (= var2865 null-var2790)))
(declare-const var3618 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3618 null-String)))
(declare-const var1898 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1898 null-Int)))
(assert true)
(define-const var3974 Int (skipWS/-1577827613 var2865 var3618 var1898)) ; Statement: i1 = specialinvoke r0.<org.apache.ibatis.builder.ParameterExpression: int skipWS(java.lang.String,int)>(r1, i0) 
(assert true)
(define-const var3646 Int (skipUntil/297438510 var2865 var3618 var3974 ",")) ; Statement: i2 = specialinvoke r0.<org.apache.ibatis.builder.ParameterExpression: int skipUntil(java.lang.String,int,java.lang.String)>(r1, i1, ",") 
 ; Statement: if i2 > i1 goto $r2 = specialinvoke r0.<org.apache.ibatis.builder.ParameterExpression: java.lang.String trimmedStr(java.lang.String,int,int)>(r1, i1, i2) 
(assert (not (> var3646 var3974))) ; Negate: Cond: i2 > i1  
(define-const var3146 var47 var47-init) ; Statement: $r3 = new org.apache.ibatis.builder.BuilderException 
(define-const var1609 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1609)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1609!1 String)
(assert (= var1609!1 ""))
(assert true)
(define-const var3604 String (append/672562846 var1609!1 "Parsing error in {")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Parsing error in {") 
(declare-const var1609!2 String)
(assert (= var1609!2 (str.++ var1609!1 "Parsing error in {")))
(assert true)
(define-const var2618 String (append/672562846 var3604 var3618)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3604!1 String)
(assert (= var3604!1 (str.++ var3604 var3618)))
(assert true)
(define-const var3288 String (append/672562846 var2618 "} in position ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("} in position ") 
(declare-const var2618!1 String)
(assert (= var2618!1 (str.++ var2618 "} in position ")))
(assert true)
(define-const var1854 String (append/-1001720160 var3288 var1898)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3288!1 String)
(assert (str.prefixof var3288 var3288!1))
(assert true)
(define-const var2867 String (toString/-2075883882 var1854)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1832852593 var3146 var2867)) ; Statement: specialinvoke $r3.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String)>($r9) 

(declare-const var3146!1 var47)
(declare-const var2867!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {skipWS/-1577827613=([org.apache.ibatis.builder.ParameterExpression, java.lang.String, int], int), skipUntil/297438510=([org.apache.ibatis.builder.ParameterExpression, java.lang.String, int, java.lang.String], int), var47-init=([], org.apache.ibatis.builder.BuilderException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1832852593=([org.apache.ibatis.builder.BuilderException, java.lang.String], void)}
; {var2790=org.apache.ibatis.builder.ParameterExpression, var2865=r0, var3618=r1, var2617=null_type, var1898=i0, var3974=i1, var3646=i2, var47=org.apache.ibatis.builder.BuilderException, var3146=$r3, var1609=$r4, var3604=$r5, var2618=$r6, var3288=$r7, var1854=$r8, var2867=$r9}
; {org.apache.ibatis.builder.ParameterExpression=var2790, r0=var2865, r1=var3618, null_type=var2617, i0=var1898, i1=var3974, i2=var3646, org.apache.ibatis.builder.BuilderException=var47, $r3=var3146, $r4=var1609, $r5=var3604, $r6=var2618, $r7=var3288, $r8=var1854, $r9=var2867}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.builder.ParameterExpression;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 = specialinvoke r0.<org.apache.ibatis.builder.ParameterExpression: int skipWS(java.lang.String,int)>(r1, i0);	i2 = specialinvoke r0.<org.apache.ibatis.builder.ParameterExpression: int skipUntil(java.lang.String,int,java.lang.String)>(r1, i1, ",");	if i2 > i1 goto $r2 = specialinvoke r0.<org.apache.ibatis.builder.ParameterExpression: java.lang.String trimmedStr(java.lang.String,int,int)>(r1, i1, i2);	$r3 = new org.apache.ibatis.builder.BuilderException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Parsing error in {");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("} in position ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String)>($r9);	throw $r3
;block_num 2