(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3730 0)
(declare-sort var2111 0)
(declare-sort var1877 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun closed/1282390086 (var3730) Bool)
(declare-fun var2111-init () var2111)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1877) String)
(declare-fun cast-from-var3730-to-var1877 (var3730) var1877)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var2111 String) void)
(declare-const null-var3730 var3730)
(declare-const var3258 var3730) ; Statement: r0 := @this: cn.hutool.core.io.AppendableWriter 
(assert (not (= var3258 null-var3730)))
(define-const var816 Bool (closed/1282390086 var3258)) ; Statement: $z0 = r0.<cn.hutool.core.io.AppendableWriter: boolean closed> 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var816 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var430 var2111 var2111-init) ; Statement: $r1 = new java.io.IOException 
(define-const var581 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var581)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var581!1 String)
(assert (= var581!1 ""))
(assert true)
(define-const var1654 String (append/672562846 var581!1 "Writer is closed!")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Writer is closed!") 
(declare-const var581!2 String)
(assert (= var581!2 (str.++ var581!1 "Writer is closed!")))
(assert true)
(define-const var166 String (append/-1031950772 var1654 (cast-from-var3730-to-var1877 var3258))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1654!1 String)
(assert (str.prefixof var1654 var1654!1))
(assert true)
(define-const var154 String (toString/-2075883882 var166)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var430 var154)) ; Statement: specialinvoke $r1.<java.io.IOException: void <init>(java.lang.String)>($r5) 

(declare-const var430!1 var2111)
(declare-const var154!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {closed/1282390086=([cn.hutool.core.io.AppendableWriter], boolean), var2111-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3730-to-var1877=([cn.hutool.core.io.AppendableWriter], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var3730=cn.hutool.core.io.AppendableWriter, var3258=r0, var816=$z0, var2111=java.io.IOException, var430=$r1, var581=$r2, var1654=$r3, var1877=java.lang.Object, var166=$r4, var154=$r5}
; {cn.hutool.core.io.AppendableWriter=var3730, r0=var3258, $z0=var816, java.io.IOException=var2111, $r1=var430, $r2=var581, $r3=var1654, java.lang.Object=var1877, $r4=var166, $r5=var154}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.core.io.AppendableWriter;	$z0 = r0.<cn.hutool.core.io.AppendableWriter: boolean closed>;	if $z0 == 0 goto return;	$r1 = new java.io.IOException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Writer is closed!");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.io.IOException: void <init>(java.lang.String)>($r5);	throw $r1
;block_num 2