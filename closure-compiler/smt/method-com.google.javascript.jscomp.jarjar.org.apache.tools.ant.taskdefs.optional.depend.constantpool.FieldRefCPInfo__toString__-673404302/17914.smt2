(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3199 0)
(declare-sort var3656 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isResolved/-1062758483 (var3656) Bool)
(declare-fun cast-from-var3199-to-var3656 (var3199) var3656)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun classIndex/112835922 (var3199) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun nameAndTypeIndex/112835922 (var3199) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3199 var3199)
(declare-const var619 var3199) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.FieldRefCPInfo 
(assert (not (= var619 null-var3199)))
(assert true)
(define-const var2950 Bool (isResolved/-1062758483 (cast-from-var3199-to-var3656 var619))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.FieldRefCPInfo: boolean isResolved()>() 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (= (ite var2950 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3383 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3383)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3383!1 String)
(assert (= var3383!1 ""))
(assert true)
(define-const var1312 String (append/672562846 var3383!1 "Field : Class index = ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Field : Class index = ") 
(declare-const var3383!2 String)
(assert (= var3383!2 (str.++ var3383!1 "Field : Class index = ")))
(define-const var331 Int (classIndex/112835922 var619)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.FieldRefCPInfo: int classIndex> 
(assert true)
(define-const var1882 String (append/-1001720160 var1312 var331)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1312!1 String)
(assert (str.prefixof var1312 var1312!1))
(assert true)
(define-const var570 String (append/672562846 var1882 ", name and type index = ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", name and type index = ") 
(declare-const var1882!1 String)
(assert (= var1882!1 (str.++ var1882 ", name and type index = ")))
(define-const var915 Int (nameAndTypeIndex/112835922 var619)) ; Statement: $i1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.FieldRefCPInfo: int nameAndTypeIndex> 
(assert true)
(define-const var2798 String (append/-1001720160 var570 var915)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var570!1 String)
(assert (str.prefixof var570 var570!1))
(assert true)
(define-const var1792 String (toString/-2075883882 var2798)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {isResolved/-1062758483=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry], boolean), cast-from-var3199-to-var3656=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.FieldRefCPInfo], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), classIndex/112835922=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.FieldRefCPInfo], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), nameAndTypeIndex/112835922=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.FieldRefCPInfo], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3199=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.FieldRefCPInfo, var619=r0, var3656=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry, var2950=$z0, var3383=$r1, var1312=$r2, var331=$i0, var1882=$r3, var570=$r4, var915=$i1, var2798=$r5, var1792=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.FieldRefCPInfo=var3199, r0=var619, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry=var3656, $z0=var2950, $r1=var3383, $r2=var1312, $i0=var331, $r3=var1882, $r4=var570, $i1=var915, $r5=var2798, $r6=var1792}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.FieldRefCPInfo;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.FieldRefCPInfo: boolean isResolved()>();	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Field : Class index = ");	$i0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.FieldRefCPInfo: int classIndex>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", name and type index = ");	$i1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.FieldRefCPInfo: int nameAndTypeIndex>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 2