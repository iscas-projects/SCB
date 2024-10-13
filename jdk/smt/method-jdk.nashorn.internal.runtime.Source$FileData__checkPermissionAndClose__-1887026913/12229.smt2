(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1000 0)
(declare-sort var3156 0)
(declare-sort var837 0)
(declare-sort var3996 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun file/-2068647888 (var1000) var3156)
(declare-fun canRead/-1629014391 (var3156) Bool)
(declare-fun var837-init () var837)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var3996) String)
(declare-fun cast-from-var3156-to-var3996 (var3156) var3996)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1681661674 (var837 String) void)
(declare-const null-var1000 var1000)
(declare-const var2534 var1000) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.Source$FileData 
(assert (not (= var2534 null-var1000)))
(define-const var3029 var3156 (file/-2068647888 var2534)) ; Statement: $r1 = r0.<jdk.nashorn.internal.runtime.Source$FileData: java.io.File file> 
(assert true)
(define-const var2888 Bool (canRead/-1629014391 var3029)) ; Statement: $z0 = virtualinvoke $r1.<java.io.File: boolean canRead()>() 
 ; Statement: if $z0 != 0 goto $r2 = newarray (java.lang.Object)[2] 
(assert (not (not (= (ite var2888 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var923 var837 var837-init) ; Statement: $r4 = new java.io.FileNotFoundException 
(define-const var657 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var657)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var657!1 String)
(assert (= var657!1 ""))
(define-const var1318 var3156 (file/-2068647888 var2534)) ; Statement: $r6 = r0.<jdk.nashorn.internal.runtime.Source$FileData: java.io.File file> 
(assert true)
(define-const var772 String (append/-1031950772 var657!1 (cast-from-var3156-to-var3996 var1318))) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var657!2 String)
(assert (str.prefixof var657!1 var657!2))
(assert true)
(define-const var614 String (append/672562846 var772 " (Permission Denied)")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (Permission Denied)") 
(declare-const var772!1 String)
(assert (= var772!1 (str.++ var772 " (Permission Denied)")))
(assert true)
(define-const var637 String (toString/-2075883882 var614)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1681661674 var923 var637)) ; Statement: specialinvoke $r4.<java.io.FileNotFoundException: void <init>(java.lang.String)>($r9) 

(declare-const var923!1 var837)
(declare-const var637!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {file/-2068647888=([jdk.nashorn.internal.runtime.Source$FileData], java.io.File), canRead/-1629014391=([java.io.File], boolean), var837-init=([], java.io.FileNotFoundException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3156-to-var3996=([java.io.File], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1681661674=([java.io.FileNotFoundException, java.lang.String], void)}
; {var1000=jdk.nashorn.internal.runtime.Source$FileData, var2534=r0, var3156=java.io.File, var3029=$r1, var2888=$z0, var837=java.io.FileNotFoundException, var923=$r4, var657=$r5, var1318=$r6, var3996=java.lang.Object, var772=$r7, var614=$r8, var637=$r9}
; {jdk.nashorn.internal.runtime.Source$FileData=var1000, r0=var2534, java.io.File=var3156, $r1=var3029, $z0=var2888, java.io.FileNotFoundException=var837, $r4=var923, $r5=var657, $r6=var1318, java.lang.Object=var3996, $r7=var772, $r8=var614, $r9=var637}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.Source$FileData;	$r1 = r0.<jdk.nashorn.internal.runtime.Source$FileData: java.io.File file>;	$z0 = virtualinvoke $r1.<java.io.File: boolean canRead()>();	if $z0 != 0 goto $r2 = newarray (java.lang.Object)[2];	$r4 = new java.io.FileNotFoundException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = r0.<jdk.nashorn.internal.runtime.Source$FileData: java.io.File file>;	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (Permission Denied)");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.io.FileNotFoundException: void <init>(java.lang.String)>($r9);	throw $r4
;block_num 2