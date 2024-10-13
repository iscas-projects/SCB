(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1783 0)
(declare-sort var2848 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1783 var1783)
(declare-const null-String String)
(declare-const var1783-LOAD_FRAME_LEN Int)
(declare-const var428 var1783) ; Statement: r9 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc 
(assert (not (= var428 null-var1783)))
(declare-const var1625 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1625 null-String)))
(declare-const var313 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var313 null-String)))
(assert true)
(define-const var3941 Int (indexOf/-1209756239 var1625 "function loadFrames() {")) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("function loadFrames() {") 
 ; Statement: if i0 < 0 goto return r0 
(assert (not (< var3941 0))) ; Negate: Cond: i0 < 0  
(define-const var3090 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3090)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3090!1 String)
(assert (= var3090!1 ""))
(assert (and true (and (>= 0 0) (>= (str.len var1625) var3941) (>= var3941 0))))
(define-const var692 String (substring/-1240304868 var1625 0 var3941)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert true)
(define-const var3900 String (append/672562846 var3090!1 var692)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3090!2 String)
(assert (= var3090!2 (str.++ var3090!1 var692)))
(assert true)
(define-const var1897 String (append/672562846 var3900 var313)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3900!1 String)
(assert (= var3900!1 (str.++ var3900 var313)))
(define-const var437 Int var1783-LOAD_FRAME_LEN) ; Statement: $i1 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc: int LOAD_FRAME_LEN> 
(define-const var2054 Int (+ var3941 var437)) ; Statement: $i2 = i0 + $i1 
(assert (and true (and (>= var2054 0) (>= (str.len var1625) var2054))))
(define-const var2392 String (substring/850833817 var1625 var2054)) ; Statement: $r5 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i2) 
(assert true)
(define-const var2523 String (append/672562846 var1897 var2392)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1897!1 String)
(assert (= var1897!1 (str.++ var1897 var2392)))
(assert true)
(define-const var594 String (toString/-2075883882 var2523)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), substring/-1240304868=([java.lang.String, int, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), substring/850833817=([java.lang.String, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1783=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc, var428=r9, var1625=r0, var2848=null_type, var313=r3, var3941=i0, var3090=$r1, var692=$r2, var3900=$r4, var1897=$r6, var437=$i1, var2054=$i2, var2392=$r5, var2523=$r7, var594=$r8}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc=var1783, r9=var428, r0=var1625, null_type=var2848, r3=var313, i0=var3941, $r1=var3090, $r2=var692, $r4=var3900, $r6=var1897, $i1=var437, $i2=var2054, $r5=var2392, $r7=var2523, $r8=var594}
;seq <java.lang.String: int indexOf(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc;	r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("function loadFrames() {");	if i0 < 0 goto return r0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$i1 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc: int LOAD_FRAME_LEN>;	$i2 = i0 + $i1;	$r5 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2