(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2343 0)
(declare-sort var2083 0)
(declare-sort var3466 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun filesets/965132528 (var2343) var2083)
(declare-fun var2083_iterator/-912451715 (var2083) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var3466 String Int) void)
(declare-fun cast-from-var2343-to-var3466 (var2343) var3466)
(declare-const null-var2343 var2343)
(declare-const var1748 var2343) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate 
(assert (not (= var1748 null-var2343)))
(define-const var447 Int 0) ; Statement: i9 = 0 
(define-const var145 var2083 (filesets/965132528 var1748)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.util.List filesets> 
(define-const var1656 Iterator (var2083_iterator/-912451715 var145)) ; Statement: r2 = interfaceinvoke $r1.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1184 Bool (Iterator_hasNext/-1669924200 var1656)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r47 = new java.lang.StringBuilder 
(assert (= (ite var1184 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1742 String String-init) ; Statement: $r47 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1742)) ; Statement: specialinvoke $r47.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1742!1 String)
(assert (= var1742!1 ""))
(assert true)
(define-const var1641 String (append/672562846 var1742!1 "Translation performed on ")) ; Statement: $r4 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Translation performed on ") 
(declare-const var1742!2 String)
(assert (= var1742!2 (str.++ var1742!1 "Translation performed on ")))
(assert true)
(define-const var590 String (append/-1001720160 var1641 var447)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i9) 
(declare-const var1641!1 String)
(assert (str.prefixof var1641 var1641!1))
(assert true)
(define-const var1871 String (append/672562846 var590 " file(s).")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" file(s).") 
(declare-const var590!1 String)
(assert (= var590!1 (str.++ var590 " file(s).")))
(assert true)
(define-const var1673 String (toString/-2075883882 var1871)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var2343-to-var3466 var1748) var1673 4)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void log(java.lang.String,int)>($r7, 4) 

(declare-const var1748!1 var2343)
(declare-const var1673!1 String)
(declare-const var2153 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {filesets/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.util.List), var2083_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var2343-to-var3466=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var2343=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate, var1748=r0, var447=i9, var2083=java.util.List, var145=$r1, var1656=r2, var1184=$z0, var1742=$r47, var1641=$r4, var590=$r5, var1871=$r6, var1673=$r7, var3466=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2153=4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate=var2343, r0=var1748, i9=var447, java.util.List=var2083, $r1=var145, r2=var1656, $z0=var1184, $r47=var1742, $r4=var1641, $r5=var590, $r6=var1871, $r7=var1673, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3466, 4=var2153}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate;	i9 = 0;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.util.List filesets>;	r2 = interfaceinvoke $r1.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r47 = new java.lang.StringBuilder;	$r47 = new java.lang.StringBuilder;	specialinvoke $r47.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Translation performed on ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i9);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" file(s).");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void log(java.lang.String,int)>($r7, 4);	return
;block_num 3