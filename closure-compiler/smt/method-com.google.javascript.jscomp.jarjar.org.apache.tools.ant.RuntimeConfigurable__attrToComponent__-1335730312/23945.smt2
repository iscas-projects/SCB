(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var904 0)
(declare-sort var1568 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(declare-fun lastIndexOf/679652410 (String Int Int) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var904 var904)
(declare-const null-String String)
(declare-const var3155 var904) ; Statement: r7 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable 
(assert (not (= var3155 null-var904)))
(declare-const var2645 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2645 null-String)))
(assert true)
(define-const var944 Int (lastIndexOf/-1292097097 var2645 58)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(58) 
(define-const var1983 Int (- var944 1)) ; Statement: $i1 = i0 - 1 
(assert true)
(define-const var3729 Int (lastIndexOf/679652410 var2645 58 var1983)) ; Statement: i2 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int,int)>(58, $i1) 
(define-const var2665 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2665)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2665!1 String)
(assert (= var2665!1 ""))
(assert (and true (and (>= 0 0) (>= (str.len var2645) var3729) (>= var3729 0))))
(define-const var1647 String (substring/-1240304868 var2645 0 var3729)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i2) 
(assert true)
(define-const var1032 String (append/672562846 var2665!1 var1647)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2665!2 String)
(assert (= var2665!2 (str.++ var2665!1 var1647)))
(assert (and true (and (>= var944 0) (>= (str.len var2645) var944))))
(define-const var1142 String (substring/850833817 var2645 var944)) ; Statement: $r3 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(i0) 
(assert true)
(define-const var3037 String (append/672562846 var1032 var1142)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1032!1 String)
(assert (= var1032!1 (str.++ var1032 var1142)))
(assert true)
(define-const var2894 String (toString/-2075883882 var3037)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), lastIndexOf/679652410=([java.lang.String, int, int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), substring/-1240304868=([java.lang.String, int, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), substring/850833817=([java.lang.String, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var904=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable, var3155=r7, var2645=r0, var1568=null_type, var944=i0, var1983=$i1, var3729=i2, var2665=$r1, var1647=$r2, var1032=$r4, var1142=$r3, var3037=$r5, var2894=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable=var904, r7=var3155, r0=var2645, null_type=var1568, i0=var944, $i1=var1983, i2=var3729, $r1=var2665, $r2=var1647, $r4=var1032, $r3=var1142, $r5=var3037, $r6=var2894}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: int lastIndexOf(int,int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: int lastIndexOf(int,int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(58);	$i1 = i0 - 1;	i2 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int,int)>(58, $i1);	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i2);	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r3 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1