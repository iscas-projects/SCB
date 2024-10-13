(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1947 0)
(declare-sort var3324 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3324 String) void)
(declare-fun cast-from-var1947-to-var3324 (var1947) var3324)
(declare-const null-var1947 var1947)
(declare-const null-Int Int)
(declare-const var566 var1947) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnpairedSurrogateException 
(assert (not (= var566 null-var1947)))
(declare-const var1392 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1392 null-Int)))
(declare-const var726 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var726 null-Int)))
(define-const var3599 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3599)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3599!1 String)
(assert (= var3599!1 ""))
(assert true)
(define-const var1532 String (append/672562846 var3599!1 "Unpaired surrogate at index ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unpaired surrogate at index ") 
(declare-const var3599!2 String)
(assert (= var3599!2 (str.++ var3599!1 "Unpaired surrogate at index ")))
(assert true)
(define-const var3888 String (append/-1001720160 var1532 var1392)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1532!1 String)
(assert (str.prefixof var1532 var1532!1))
(assert true)
(define-const var2462 String (append/672562846 var3888 " of ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of ") 
(declare-const var3888!1 String)
(assert (= var3888!1 (str.++ var3888 " of ")))
(assert true)
(define-const var1376 String (append/-1001720160 var2462 var726)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var2462!1 String)
(assert (str.prefixof var2462 var2462!1))
(assert true)
(define-const var1136 String (toString/-2075883882 var1376)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 (cast-from-var1947-to-var3324 var566) var1136)) ; Statement: specialinvoke r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var566!1 var1947)
(declare-const var1136!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void), cast-from-var1947-to-var3324=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnpairedSurrogateException], java.lang.IllegalArgumentException)}
; {var1947=com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnpairedSurrogateException, var566=r0, var1392=i0, var726=i1, var3599=$r1, var1532=$r2, var3888=$r3, var2462=$r4, var1376=$r5, var1136=$r6, var3324=java.lang.IllegalArgumentException}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnpairedSurrogateException=var1947, r0=var566, i0=var1392, i1=var726, $r1=var3599, $r2=var1532, $r3=var3888, $r4=var2462, $r5=var1376, $r6=var1136, java.lang.IllegalArgumentException=var3324}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnpairedSurrogateException;	i0 := @parameter0: int;	i1 := @parameter1: int;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unpaired surrogate at index ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	return
;block_num 1