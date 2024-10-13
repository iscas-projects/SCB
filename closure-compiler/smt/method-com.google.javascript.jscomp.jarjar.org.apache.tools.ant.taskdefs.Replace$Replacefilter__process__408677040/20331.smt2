(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3561 0)
(declare-sort var3624 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getToken/291154857 (var3561) String)
(declare-fun inputBuffer/-524338880 (var3561) String)
(declare-fun length/-1112840705 (String) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun replace/2050546468 (var3561) Int)
(declare-fun var3624_max/1360571700 (Int Int) Int)
(declare-fun outputBuffer/-524338880 (var3561) String)
(declare-fun substring/-7864644 (String Int Int) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun delete/-2415906 (String Int Int) String)
(declare-const null-var3561 var3561)
(declare-const var999 var3561) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter 
(assert (not (= var999 null-var3561)))
(assert true)
(define-const var1316 String (getToken/291154857 var999)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: java.lang.String getToken()>() 
(define-const var3881 String (inputBuffer/-524338880 var999)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: java.lang.StringBuffer inputBuffer> 
(assert true)
(define-const var2163 Int (length/-1112840705 var3881)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.StringBuffer: int length()>() 
(assert true)
(define-const var2659 Int (length/-134980193 var1316)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i1 <= $i0 goto return 0 
(assert (not (<= var2163 var2659))) ; Negate: Cond: $i1 <= $i0  
(assert true)
(define-const var1183 Int (replace/2050546468 var999)) ; Statement: i5 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: int replace()>() 
(define-const var16 String (inputBuffer/-524338880 var999)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: java.lang.StringBuffer inputBuffer> 
(assert true)
(define-const var310 Int (length/-1112840705 var16)) ; Statement: $i3 = virtualinvoke $r3.<java.lang.StringBuffer: int length()>() 
(assert true)
(define-const var2818 Int (length/-134980193 var1316)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3518 Int (- var310 var2818)) ; Statement: $i4 = $i3 - $i2 
(define-const var2766 Int (var3624_max/1360571700 var3518 var1183)) ; Statement: i6 = staticinvoke <java.lang.Math: int max(int,int)>($i4, i5) 
(define-const var3666 String (outputBuffer/-524338880 var999)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: java.lang.StringBuffer outputBuffer> 
(define-const var3741 String (inputBuffer/-524338880 var999)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: java.lang.StringBuffer inputBuffer> 
(assert true)
(define-const var3786 String (substring/-7864644 var3741 0 var2766)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.String substring(int,int)>(0, i6) 
(assert true)
;(assert (append/1560614132 var3666 var3786)) ; Statement: virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6) 
(declare-const var3666!1 String)
(assert (str.prefixof var3666 var3666!1))
(define-const var3602 String (inputBuffer/-524338880 var999)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: java.lang.StringBuffer inputBuffer> 
(assert true)
;(assert (delete/-2415906 var3602 0 var2766)) ; Statement: virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer delete(int,int)>(0, i6) 

(declare-const var3602!1 String)
(declare-const var2156 Int)
(declare-const var2766!1 Int)
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {getToken/291154857=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter], java.lang.String), inputBuffer/-524338880=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter], java.lang.StringBuffer), length/-1112840705=([java.lang.StringBuffer], int), length/-134980193=([java.lang.String], int), replace/2050546468=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter], int), var3624_max/1360571700=([int, int], int), outputBuffer/-524338880=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter], java.lang.StringBuffer), substring/-7864644=([java.lang.StringBuffer, int, int], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), delete/-2415906=([java.lang.StringBuffer, int, int], java.lang.StringBuffer)}
; {var3561=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter, var999=r0, var1316=r1, var3881=$r2, var2163=$i1, var2659=$i0, var1183=i5, var16=$r3, var310=$i3, var2818=$i2, var3518=$i4, var3624=java.lang.Math, var2766=i6, var3666=$r5, var3741=$r4, var3786=$r6, var3602=$r7, var2156=0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter=var3561, r0=var999, r1=var1316, $r2=var3881, $i1=var2163, $i0=var2659, i5=var1183, $r3=var16, $i3=var310, $i2=var2818, $i4=var3518, java.lang.Math=var3624, i6=var2766, $r5=var3666, $r4=var3741, $r6=var3786, $r7=var3602, 0=var2156}
;seq <java.lang.StringBuffer: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuffer: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuffer: java.lang.String substring(int,int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer delete(int,int)>
;cnt {"<java.lang.StringBuffer: int length()>": 2,"<java.lang.String: int length()>": 2,"<java.lang.StringBuffer: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer delete(int,int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: java.lang.String getToken()>();	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: java.lang.StringBuffer inputBuffer>;	$i1 = virtualinvoke $r2.<java.lang.StringBuffer: int length()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if $i1 <= $i0 goto return 0;	i5 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: int replace()>();	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: java.lang.StringBuffer inputBuffer>;	$i3 = virtualinvoke $r3.<java.lang.StringBuffer: int length()>();	$i2 = virtualinvoke r1.<java.lang.String: int length()>();	$i4 = $i3 - $i2;	i6 = staticinvoke <java.lang.Math: int max(int,int)>($i4, i5);	$r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: java.lang.StringBuffer outputBuffer>;	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: java.lang.StringBuffer inputBuffer>;	$r6 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.String substring(int,int)>(0, i6);	virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6);	$r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: java.lang.StringBuffer inputBuffer>;	virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer delete(int,int)>(0, i6);	return 1
;block_num 2