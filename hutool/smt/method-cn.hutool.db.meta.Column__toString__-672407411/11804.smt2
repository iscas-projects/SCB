(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3539 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun tableName/1753680309 (var3539) String)
(declare-fun name/1753680309 (var3539) String)
(declare-fun type/1753680309 (var3539) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun size/1753680309 (var3539) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun isNullable/1753680309 (var3539) Bool)
(declare-fun append/-388390247 (String Bool) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3539 var3539)
(declare-const var1420 var3539) ; Statement: r1 := @this: cn.hutool.db.meta.Column 
(assert (not (= var1420 null-var3539)))
(define-const var863 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var863)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var863!1 String)
(assert (= var863!1 ""))
(assert true)
(define-const var1733 String (append/672562846 var863!1 "Column [tableName=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Column [tableName=") 
(declare-const var863!2 String)
(assert (= var863!2 (str.++ var863!1 "Column [tableName=")))
(define-const var2646 String (tableName/1753680309 var1420)) ; Statement: $r2 = r1.<cn.hutool.db.meta.Column: java.lang.String tableName> 
(assert true)
(define-const var3357 String (append/672562846 var1733 var2646)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1733!1 String)
(assert (= var1733!1 (str.++ var1733 var2646)))
(assert true)
(define-const var1002 String (append/672562846 var3357 ", name=")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", name=") 
(declare-const var3357!1 String)
(assert (= var3357!1 (str.++ var3357 ", name=")))
(define-const var88 String (name/1753680309 var1420)) ; Statement: $r5 = r1.<cn.hutool.db.meta.Column: java.lang.String name> 
(assert true)
(define-const var3320 String (append/672562846 var1002 var88)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1002!1 String)
(assert (= var1002!1 (str.++ var1002 var88)))
(assert true)
(define-const var1323 String (append/672562846 var3320 ", type=")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", type=") 
(declare-const var3320!1 String)
(assert (= var3320!1 (str.++ var3320 ", type=")))
(define-const var276 Int (type/1753680309 var1420)) ; Statement: $i0 = r1.<cn.hutool.db.meta.Column: int type> 
(assert true)
(define-const var185 String (append/-1001720160 var1323 var276)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1323!1 String)
(assert (str.prefixof var1323 var1323!1))
(assert true)
(define-const var329 String (append/672562846 var185 ", size=")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", size=") 
(declare-const var185!1 String)
(assert (= var185!1 (str.++ var185 ", size=")))
(define-const var3879 Int (size/1753680309 var1420)) ; Statement: $l1 = r1.<cn.hutool.db.meta.Column: long size> 
(assert true)
(define-const var142 String (append/-901862667 var329 var3879)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l1) 
(declare-const var329!1 String)
(assert (str.prefixof var329 var329!1))
(assert true)
(define-const var3714 String (append/672562846 var142 ", isNullable=")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", isNullable=") 
(declare-const var142!1 String)
(assert (= var142!1 (str.++ var142 ", isNullable=")))
(define-const var1302 Bool (isNullable/1753680309 var1420)) ; Statement: $z0 = r1.<cn.hutool.db.meta.Column: boolean isNullable> 
(assert true)
(define-const var2029 String (append/-388390247 var3714 var1302)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z0) 
(declare-const var3714!1 String)
(assert (str.prefixof var3714 var3714!1))
(assert true)
(define-const var411 String (append/672562846 var2029 "]")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2029!1 String)
(assert (= var2029!1 (str.++ var2029 "]")))
(assert true)
(define-const var2383 String (toString/-2075883882 var411)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), tableName/1753680309=([cn.hutool.db.meta.Column], java.lang.String), name/1753680309=([cn.hutool.db.meta.Column], java.lang.String), type/1753680309=([cn.hutool.db.meta.Column], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), size/1753680309=([cn.hutool.db.meta.Column], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), isNullable/1753680309=([cn.hutool.db.meta.Column], boolean), append/-388390247=([java.lang.StringBuilder, boolean], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3539=cn.hutool.db.meta.Column, var1420=r1, var863=$r0, var1733=$r3, var2646=$r2, var3357=$r4, var1002=$r6, var88=$r5, var3320=$r7, var1323=$r8, var276=$i0, var185=$r9, var329=$r10, var3879=$l1, var142=$r11, var3714=$r12, var1302=$z0, var2029=$r13, var411=$r14, var2383=$r15}
; {cn.hutool.db.meta.Column=var3539, r1=var1420, $r0=var863, $r3=var1733, $r2=var2646, $r4=var3357, $r6=var1002, $r5=var88, $r7=var3320, $r8=var1323, $i0=var276, $r9=var185, $r10=var329, $l1=var3879, $r11=var142, $r12=var3714, $z0=var1302, $r13=var2029, $r14=var411, $r15=var2383}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.db.meta.Column;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Column [tableName=");	$r2 = r1.<cn.hutool.db.meta.Column: java.lang.String tableName>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", name=");	$r5 = r1.<cn.hutool.db.meta.Column: java.lang.String name>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", type=");	$i0 = r1.<cn.hutool.db.meta.Column: int type>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", size=");	$l1 = r1.<cn.hutool.db.meta.Column: long size>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", isNullable=");	$z0 = r1.<cn.hutool.db.meta.Column: boolean isNullable>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z0);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 1