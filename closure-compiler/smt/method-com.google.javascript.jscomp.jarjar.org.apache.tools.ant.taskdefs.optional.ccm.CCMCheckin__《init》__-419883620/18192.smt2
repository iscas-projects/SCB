(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var235 0)
(declare-sort var202 0)
(declare-sort var456 0)
(declare-sort var1852 0)
(declare-sort var3235 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1111902473 (var202) void)
(declare-fun cast-from-var235-to-var202 (var235) var202)
(declare-fun setCcmAction/2089048736 (var456 String) void)
(declare-fun cast-from-var235-to-var456 (var235) var456)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1852-init () var1852)
(declare-fun <init>/-788057745 (var1852) void)
(declare-fun append/-1031950772 (String var3235) String)
(declare-fun cast-from-var1852-to-var3235 (var1852) var3235)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setComment/-686028015 (var202 String) void)
(declare-const null-var235 var235)
(declare-const var119 var235) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheckin 
(assert (not (= var119 null-var235)))
(assert true)
;(assert (<init>/-1111902473 (cast-from-var235-to-var202 var119))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck: void <init>()>() 

(declare-const var119!1 var235)
(assert true)
;(assert (setCcmAction/2089048736 (cast-from-var235-to-var456 var119!1) "ci")) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheckin: void setCcmAction(java.lang.String)>("ci") 

(declare-const var119!2 var235)
(declare-const var2858 String)
(define-const var2071 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2071)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2071!1 String)
(assert (= var2071!1 ""))
(assert true)
(define-const var3891 String (append/672562846 var2071!1 "Checkin ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Checkin ") 
(declare-const var2071!2 String)
(assert (= var2071!2 (str.++ var2071!1 "Checkin ")))
(define-const var2866 var1852 var1852-init) ; Statement: $r2 = new java.util.Date 
(assert true)
;(assert (<init>/-788057745 var2866)) ; Statement: specialinvoke $r2.<java.util.Date: void <init>()>() 

(declare-const var2866!1 var1852)
(assert true)
(define-const var2734 String (append/-1031950772 var3891 (cast-from-var1852-to-var3235 var2866!1))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3891!1 String)
(assert (str.prefixof var3891 var3891!1))
(assert true)
(define-const var6 String (toString/-2075883882 var2734)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setComment/-686028015 (cast-from-var235-to-var202 var119!2) var6)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheckin: void setComment(java.lang.String)>($r5) 

(declare-const var119!3 var235)
(declare-const var6!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1111902473=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck], void), cast-from-var235-to-var202=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheckin], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck), setCcmAction/2089048736=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.Continuus, java.lang.String], void), cast-from-var235-to-var456=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheckin], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.Continuus), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1852-init=([], java.util.Date), <init>/-788057745=([java.util.Date], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1852-to-var3235=([java.util.Date], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setComment/-686028015=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck, java.lang.String], void)}
; {var235=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheckin, var119=r0, var202=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck, var456=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.Continuus, var2858="ci", var2071=$r1, var3891=$r3, var1852=java.util.Date, var2866=$r2, var3235=java.lang.Object, var2734=$r4, var6=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheckin=var235, r0=var119, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck=var202, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.Continuus=var456, "ci"=var2858, $r1=var2071, $r3=var3891, java.util.Date=var1852, $r2=var2866, java.lang.Object=var3235, $r4=var2734, $r5=var6}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheckin;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck: void <init>()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheckin: void setCcmAction(java.lang.String)>("ci");	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Checkin ");	$r2 = new java.util.Date;	specialinvoke $r2.<java.util.Date: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheckin: void setComment(java.lang.String)>($r5);	return
;block_num 1