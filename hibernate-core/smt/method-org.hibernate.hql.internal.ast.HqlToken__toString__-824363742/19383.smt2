(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1449 0)
(declare-sort var8 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getText/792947454 (var8) String)
(declare-fun cast-from-var1449-to-var8 (var1449) var8)
(declare-fun getType/-1460921259 (var8) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getPreviousType/1139534451 (var1449) Int)
(declare-fun line/106891245 (var8) Int)
(declare-fun col/106891245 (var8) Int)
(declare-fun possibleID/-1304577790 (var1449) Bool)
(declare-fun append/-388390247 (String Bool) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1449 var1449)
(declare-const var3031 var1449) ; Statement: r1 := @this: org.hibernate.hql.internal.ast.HqlToken 
(assert (not (= var3031 null-var1449)))
(define-const var86 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var86)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var86!1 String)
(assert (= var86!1 ""))
(assert true)
(define-const var1810 String (append/672562846 var86!1 "[\u0022")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[\"") 
(declare-const var86!2 String)
(assert (= var86!2 (str.++ var86!1 "[\u0022")))
(assert true)
(define-const var1217 String (getText/792947454 (cast-from-var1449-to-var8 var3031))) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.hql.internal.ast.HqlToken: java.lang.String getText()>() 
(assert true)
(define-const var668 String (append/672562846 var1810 var1217)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1810!1 String)
(assert (= var1810!1 (str.++ var1810 var1217)))
(assert true)
(define-const var1551 String (append/672562846 var668 "\u0022,<")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\",<") 
(declare-const var668!1 String)
(assert (= var668!1 (str.++ var668 "\u0022,<")))
(assert true)
(define-const var2892 Int (getType/-1460921259 (cast-from-var1449-to-var8 var3031))) ; Statement: $i0 = virtualinvoke r1.<org.hibernate.hql.internal.ast.HqlToken: int getType()>() 
(assert true)
(define-const var3494 String (append/-1001720160 var1551 var2892)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1551!1 String)
(assert (str.prefixof var1551 var1551!1))
(assert true)
(define-const var3841 String (append/672562846 var3494 "> previously: <")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("> previously: <") 
(declare-const var3494!1 String)
(assert (= var3494!1 (str.++ var3494 "> previously: <")))
(assert true)
(define-const var3284 Int (getPreviousType/1139534451 var3031)) ; Statement: $i1 = specialinvoke r1.<org.hibernate.hql.internal.ast.HqlToken: int getPreviousType()>() 
(assert true)
(define-const var3421 String (append/-1001720160 var3841 var3284)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3841!1 String)
(assert (str.prefixof var3841 var3841!1))
(assert true)
(define-const var3346 String (append/672562846 var3421 ">,line=")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">,line=") 
(declare-const var3421!1 String)
(assert (= var3421!1 (str.++ var3421 ">,line=")))
(define-const var3153 Int (line/106891245 (cast-from-var1449-to-var8 var3031))) ; Statement: $i2 = r1.<org.hibernate.hql.internal.ast.HqlToken: int line> 
(assert true)
(define-const var2569 String (append/-1001720160 var3346 var3153)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var3346!1 String)
(assert (str.prefixof var3346 var3346!1))
(assert true)
(define-const var1196 String (append/672562846 var2569 ",col=")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",col=") 
(declare-const var2569!1 String)
(assert (= var2569!1 (str.++ var2569 ",col=")))
(define-const var2130 Int (col/106891245 (cast-from-var1449-to-var8 var3031))) ; Statement: $i3 = r1.<org.hibernate.hql.internal.ast.HqlToken: int col> 
(assert true)
(define-const var1358 String (append/-1001720160 var1196 var2130)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var1196!1 String)
(assert (str.prefixof var1196 var1196!1))
(assert true)
(define-const var31 String (append/672562846 var1358 ",possibleID=")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",possibleID=") 
(declare-const var1358!1 String)
(assert (= var1358!1 (str.++ var1358 ",possibleID=")))
(define-const var440 Bool (possibleID/-1304577790 var3031)) ; Statement: $z0 = r1.<org.hibernate.hql.internal.ast.HqlToken: boolean possibleID> 
(assert true)
(define-const var3267 String (append/-388390247 var31 var440)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z0) 
(declare-const var31!1 String)
(assert (str.prefixof var31 var31!1))
(assert true)
(define-const var150 String (append/672562846 var3267 "]")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3267!1 String)
(assert (= var3267!1 (str.++ var3267 "]")))
(assert true)
(define-const var2076 String (toString/-2075883882 var150)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getText/792947454=([antlr.CommonToken], java.lang.String), cast-from-var1449-to-var8=([org.hibernate.hql.internal.ast.HqlToken], antlr.CommonToken), getType/-1460921259=([antlr.CommonToken], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getPreviousType/1139534451=([org.hibernate.hql.internal.ast.HqlToken], int), line/106891245=([antlr.CommonToken], int), col/106891245=([antlr.CommonToken], int), possibleID/-1304577790=([org.hibernate.hql.internal.ast.HqlToken], boolean), append/-388390247=([java.lang.StringBuilder, boolean], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1449=org.hibernate.hql.internal.ast.HqlToken, var3031=r1, var86=$r0, var1810=$r3, var8=antlr.CommonToken, var1217=$r2, var668=$r4, var1551=$r5, var2892=$i0, var3494=$r6, var3841=$r7, var3284=$i1, var3421=$r8, var3346=$r9, var3153=$i2, var2569=$r10, var1196=$r11, var2130=$i3, var1358=$r12, var31=$r13, var440=$z0, var3267=$r14, var150=$r15, var2076=$r16}
; {org.hibernate.hql.internal.ast.HqlToken=var1449, r1=var3031, $r0=var86, $r3=var1810, antlr.CommonToken=var8, $r2=var1217, $r4=var668, $r5=var1551, $i0=var2892, $r6=var3494, $r7=var3841, $i1=var3284, $r8=var3421, $r9=var3346, $i2=var3153, $r10=var2569, $r11=var1196, $i3=var2130, $r12=var1358, $r13=var31, $z0=var440, $r14=var3267, $r15=var150, $r16=var2076}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.hql.internal.ast.HqlToken;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[\"");	$r2 = virtualinvoke r1.<org.hibernate.hql.internal.ast.HqlToken: java.lang.String getText()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\",<");	$i0 = virtualinvoke r1.<org.hibernate.hql.internal.ast.HqlToken: int getType()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("> previously: <");	$i1 = specialinvoke r1.<org.hibernate.hql.internal.ast.HqlToken: int getPreviousType()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">,line=");	$i2 = r1.<org.hibernate.hql.internal.ast.HqlToken: int line>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",col=");	$i3 = r1.<org.hibernate.hql.internal.ast.HqlToken: int col>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",possibleID=");	$z0 = r1.<org.hibernate.hql.internal.ast.HqlToken: boolean possibleID>;	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z0);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	return $r16
;block_num 1