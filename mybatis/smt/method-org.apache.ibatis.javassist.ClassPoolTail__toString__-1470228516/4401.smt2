(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3147 0)
(declare-sort var1228 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun pathList/-1500758468 (var3147) var1228)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3147 var3147)
(declare-const null-var1228 var1228)
(declare-const var1275 var3147) ; Statement: r1 := @this: org.apache.ibatis.javassist.ClassPoolTail 
(assert (not (= var1275 null-var3147)))
(define-const var2139 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2139)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2139!1 String)
(assert (= var2139!1 ""))
(assert true)
;(assert (append/672562846 var2139!1 "[class path: ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[class path: ") 
(declare-const var2139!2 String)
(assert (= var2139!2 (str.++ var2139!1 "[class path: ")))
(define-const var3162 var1228 (pathList/-1500758468 var1275)) ; Statement: r5 = r1.<org.apache.ibatis.javassist.ClassPoolTail: org.apache.ibatis.javassist.ClassPathList pathList> 
(assert true) ; Non Conditional
 ; Statement: if r5 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(assert (= var3162 null-var1228)) ; Cond: r5 == null 
(assert true)
;(assert (append/-1166366385 var2139!2 93)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var2139!3 String)
(assert (str.prefixof var2139!2 var2139!3))
(assert true)
(define-const var2895 String (toString/-2075883882 var2139!3)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), pathList/-1500758468=([org.apache.ibatis.javassist.ClassPoolTail], org.apache.ibatis.javassist.ClassPathList), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3147=org.apache.ibatis.javassist.ClassPoolTail, var1275=r1, var2139=$r0, var1228=org.apache.ibatis.javassist.ClassPathList, var3162=r5, var2895=$r2}
; {org.apache.ibatis.javassist.ClassPoolTail=var3147, r1=var1275, $r0=var2139, org.apache.ibatis.javassist.ClassPathList=var1228, r5=var3162, $r2=var2895}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.ClassPoolTail;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[class path: ");	r5 = r1.<org.apache.ibatis.javassist.ClassPoolTail: org.apache.ibatis.javassist.ClassPathList pathList>;	if r5 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3