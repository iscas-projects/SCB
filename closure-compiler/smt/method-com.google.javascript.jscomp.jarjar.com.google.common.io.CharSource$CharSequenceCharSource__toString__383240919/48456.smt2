(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3659 0)
(declare-sort var1147 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun seq/-342019969 (var3659) String)
(declare-fun var1147_truncate/775004463 (String Int String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3659 var3659)
(declare-const var974 var3659) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource 
(assert (not (= var974 null-var3659)))
(define-const var1234 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1234)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1234!1 String)
(assert (= var1234!1 ""))
(assert true)
(define-const var2930 String (append/672562846 var1234!1 "CharSource.wrap(")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CharSource.wrap(") 
(declare-const var1234!2 String)
(assert (= var1234!2 (str.++ var1234!1 "CharSource.wrap(")))
(define-const var1233 String (seq/-342019969 var974)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource: java.lang.CharSequence seq> 
(define-const var2806 String (var1147_truncate/775004463 var1233 30 "...")) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii: java.lang.String truncate(java.lang.CharSequence,int,java.lang.String)>($r2, 30, "...") 
(assert true)
(define-const var1129 String (append/672562846 var2930 var2806)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2930!1 String)
(assert (= var2930!1 (str.++ var2930 var2806)))
(assert true)
(define-const var2322 String (append/672562846 var1129 ")")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1129!1 String)
(assert (= var1129!1 (str.++ var1129 ")")))
(assert true)
(define-const var3193 String (toString/-2075883882 var2322)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), seq/-342019969=([com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource], java.lang.CharSequence), var1147_truncate/775004463=([java.lang.CharSequence, int, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3659=com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource, var974=r1, var1234=$r0, var2930=$r4, var1233=$r2, var1147=com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii, var2806=$r3, var1129=$r5, var2322=$r6, var3193=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource=var3659, r1=var974, $r0=var1234, $r4=var2930, $r2=var1233, com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii=var1147, $r3=var2806, $r5=var1129, $r6=var2322, $r7=var3193}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CharSource.wrap(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource: java.lang.CharSequence seq>;	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii: java.lang.String truncate(java.lang.CharSequence,int,java.lang.String)>($r2, 30, "...");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1