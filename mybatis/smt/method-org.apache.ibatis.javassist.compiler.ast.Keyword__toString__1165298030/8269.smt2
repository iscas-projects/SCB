(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var341 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun tokenId/-307349930 (var341) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var341 var341)
(declare-const var406 var341) ; Statement: r1 := @this: org.apache.ibatis.javassist.compiler.ast.Keyword 
(assert (not (= var406 null-var341)))
(define-const var2082 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2082)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2082!1 String)
(assert (= var2082!1 ""))
(assert true)
(define-const var488 String (append/672562846 var2082!1 "id:")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("id:") 
(declare-const var2082!2 String)
(assert (= var2082!2 (str.++ var2082!1 "id:")))
(define-const var1305 Int (tokenId/-307349930 var406)) ; Statement: $i0 = r1.<org.apache.ibatis.javassist.compiler.ast.Keyword: int tokenId> 
(assert true)
(define-const var2925 String (append/-1001720160 var488 var1305)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var488!1 String)
(assert (str.prefixof var488 var488!1))
(assert true)
(define-const var3688 String (toString/-2075883882 var2925)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), tokenId/-307349930=([org.apache.ibatis.javassist.compiler.ast.Keyword], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var341=org.apache.ibatis.javassist.compiler.ast.Keyword, var406=r1, var2082=$r0, var488=$r2, var1305=$i0, var2925=$r3, var3688=$r4}
; {org.apache.ibatis.javassist.compiler.ast.Keyword=var341, r1=var406, $r0=var2082, $r2=var488, $i0=var1305, $r3=var2925, $r4=var3688}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.compiler.ast.Keyword;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("id:");	$i0 = r1.<org.apache.ibatis.javassist.compiler.ast.Keyword: int tokenId>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1