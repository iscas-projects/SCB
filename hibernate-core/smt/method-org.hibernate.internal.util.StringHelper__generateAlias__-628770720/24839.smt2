(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2713 0)
(declare-sort var2680 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2680_generateAliasRoot/-1683017442 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var1577 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1577 null-String)))
(define-const var3122 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3122)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3122!1 String)
(assert (= var3122!1 ""))
(define-const var1530 String (var2680_generateAliasRoot/-1683017442 var1577)) ; Statement: $r2 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String generateAliasRoot(java.lang.String)>(r1) 
(assert true)
(define-const var3725 String (append/672562846 var3122!1 var1530)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3122!2 String)
(assert (= var3122!2 (str.++ var3122!1 var1530)))
(assert true)
(define-const var3995 String (append/-1166366385 var3725 95)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(95) 
(declare-const var3725!1 String)
(assert (str.prefixof var3725 var3725!1))
(assert true)
(define-const var1643 String (toString/-2075883882 var3995)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2680_generateAliasRoot/-1683017442=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1577=r1, var2713=null_type, var3122=$r0, var2680=org.hibernate.internal.util.StringHelper, var1530=$r2, var3725=$r3, var3995=$r4, var1643=$r5}
; {r1=var1577, null_type=var2713, $r0=var3122, org.hibernate.internal.util.StringHelper=var2680, $r2=var1530, $r3=var3725, $r4=var3995, $r5=var1643}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String generateAliasRoot(java.lang.String)>(r1);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(95);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1