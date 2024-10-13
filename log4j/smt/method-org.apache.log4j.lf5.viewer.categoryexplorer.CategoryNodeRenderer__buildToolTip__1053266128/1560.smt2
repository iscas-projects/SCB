(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1868 0)
(declare-sort var2203 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun getTitle/-456128196 (var2203) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTotalNumberOfRecords/-524510730 (var2203) Int)
(declare-fun append/1845021834 (String Int) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var1868 var1868)
(declare-const null-var2203 var2203)
(declare-const var3832 var1868) ; Statement: r5 := @this: org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNodeRenderer 
(assert (not (= var3832 null-var1868)))
(declare-const var1158 var2203) ; Statement: r1 := @parameter0: org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode 
(assert (not (= var1158 null-var2203)))
(define-const var735 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var735)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var735!1 String)
(assert true)
(define-const var3204 String (getTitle/-456128196 var1158)) ; Statement: $r2 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode: java.lang.String getTitle()>() 
(assert true)
(define-const var2043 String (append/1560614132 var735!1 var3204)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var735!2 String)
(assert (str.prefixof var735!1 var735!2))
(assert true)
;(assert (append/1560614132 var2043 " contains a total of ")) ; Statement: virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" contains a total of ") 
(declare-const var2043!1 String)
(assert (str.prefixof var2043 var2043!1))
(assert true)
(define-const var1938 Int (getTotalNumberOfRecords/-524510730 var1158)) ; Statement: $i0 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode: int getTotalNumberOfRecords()>() 
(assert true)
;(assert (append/1845021834 var735!2 var1938)) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i0) 

(declare-const var735!3 String)
(declare-const var1938!1 Int)
(assert true)
;(assert (append/1560614132 var735!3 " LogRecords.")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" LogRecords.") 
(declare-const var735!4 String)
(assert (str.prefixof var735!3 var735!4))
(assert true)
;(assert (append/1560614132 var735!4 " Right-click for more info.")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" Right-click for more info.") 
(declare-const var735!5 String)
(assert (str.prefixof var735!4 var735!5))
(assert true)
(define-const var3354 String (toString/-222306083 var735!5)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), getTitle/-456128196=([org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getTotalNumberOfRecords/-524510730=([org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode], int), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var1868=org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNodeRenderer, var3832=r5, var2203=org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode, var1158=r1, var735=$r0, var3204=$r2, var2043=$r3, var1938=$i0, var3354=$r4}
; {org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNodeRenderer=var1868, r5=var3832, org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode=var2203, r1=var1158, $r0=var735, $r2=var3204, $r3=var2043, $i0=var1938, $r4=var3354}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 4,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r5 := @this: org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNodeRenderer;	r1 := @parameter0: org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r2 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode: java.lang.String getTitle()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" contains a total of ");	$i0 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode: int getTotalNumberOfRecords()>();	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i0);	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" LogRecords.");	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" Right-click for more info.");	$r4 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	return $r4
;block_num 1