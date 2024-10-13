(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var912 0)
(declare-sort var958 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var958-init () var958)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var958 String) void)
(declare-const null-var912 var912)
(declare-const null-Int Int)
(declare-const var3299 var912) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry 
(assert (not (= var3299 null-var912)))
(declare-const var200 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var200 null-Int)))
 ; Statement: if i0 >= 0 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry: int method> = i0 
(assert (not (>= var200 0))) ; Negate: Cond: i0 >= 0  
(define-const var3929 var958 var958-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var497 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var497)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var497!1 String)
(assert (= var497!1 ""))
(assert true)
(define-const var1984 String (append/672562846 var497!1 "ZIP compression method can not be negative: ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ZIP compression method can not be negative: ") 
(declare-const var497!2 String)
(assert (= var497!2 (str.++ var497!1 "ZIP compression method can not be negative: ")))
(assert true)
(define-const var2882 String (append/-1001720160 var1984 var200)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1984!1 String)
(assert (str.prefixof var1984 var1984!1))
(assert true)
(define-const var16 String (toString/-2075883882 var2882)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3929 var16)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var3929!1 var958)
(declare-const var16!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var958-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var912=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry, var3299=r0, var200=i0, var958=java.lang.IllegalArgumentException, var3929=$r1, var497=$r2, var1984=$r3, var2882=$r4, var16=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry=var912, r0=var3299, i0=var200, java.lang.IllegalArgumentException=var958, $r1=var3929, $r2=var497, $r3=var1984, $r4=var2882, $r5=var16}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry;	i0 := @parameter0: int;	if i0 >= 0 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry: int method> = i0;	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ZIP compression method can not be negative: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r1
;block_num 2