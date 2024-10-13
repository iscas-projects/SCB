(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1338 0)
(declare-sort var988 0)
(declare-sort var3794 0)
(declare-sort var2359 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3794-init () var3794)
(declare-fun <init>/-325640736 (var3794) void)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTitle/-456128196 (var988) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun add/1770215592 (var3794 var2359) Bool)
(declare-fun cast-from-String-to-var2359 (String) var2359)
(declare-fun hasFatalRecords/883831033 (var988) Bool)
(declare-fun hasFatalChildren/-114558560 (var988) Bool)
(declare-fun getNumberOfContainedRecords/-930153819 (var988) Int)
(declare-fun append/1845021834 (String Int) String)
(declare-fun getNumberOfRecordsFromChildren/1704474875 (var988) Int)
(declare-fun getTotalNumberOfRecords/-524510730 (var988) Int)
(declare-fun toArray/-551350551 (var3794) (Array Int var2359))
(declare-const null-var1338 var1338)
(declare-const null-var988 var988)
(declare-const var1675 var1338) ; Statement: r20 := @this: org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNodeEditor 
(assert (not (= var1675 null-var1338)))
(declare-const var3178 var988) ; Statement: r2 := @parameter0: org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode 
(assert (not (= var3178 null-var988)))
(define-const var2599 var3794 var3794-init) ; Statement: $r0 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2599)) ; Statement: specialinvoke $r0.<java.util.ArrayList: void <init>()>() 

(declare-const var2599!1 var3794)
(define-const var1729 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1729)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1729!1 String)
(assert true)
(define-const var1419 String (append/1560614132 var1729!1 "Category: ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Category: ") 
(declare-const var1729!2 String)
(assert (str.prefixof var1729!1 var1729!2))
(assert true)
(define-const var2783 String (getTitle/-456128196 var3178)) ; Statement: $r3 = virtualinvoke r2.<org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode: java.lang.String getTitle()>() 
(assert true)
(define-const var2574 String (append/1560614132 var1419 var2783)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3) 
(declare-const var1419!1 String)
(assert (str.prefixof var1419 var1419!1))
(assert true)
(define-const var317 String (toString/-222306083 var2574)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (add/1770215592 var2599!1 (cast-from-String-to-var2359 var317))) ; Statement: virtualinvoke $r0.<java.util.ArrayList: boolean add(java.lang.Object)>($r6) 

(declare-const var2599!2 var3794)
(declare-const var317!1 String)
(assert true)
(define-const var1757 Bool (hasFatalRecords/883831033 var3178)) ; Statement: $z0 = virtualinvoke r2.<org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode: boolean hasFatalRecords()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r2.<org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode: boolean hasFatalChildren()>() 
(assert (= (ite var1757 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var803 Bool (hasFatalChildren/-114558560 var3178)) ; Statement: $z1 = virtualinvoke r2.<org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode: boolean hasFatalChildren()>() 
 ; Statement: if $z1 == 0 goto $r7 = new java.lang.StringBuffer 
(assert (= (ite var803 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2516 String String-init) ; Statement: $r7 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2516)) ; Statement: specialinvoke $r7.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2516!1 String)
(assert true)
(define-const var2492 String (append/1560614132 var2516!1 "LogRecords in this category alone: ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("LogRecords in this category alone: ") 
(declare-const var2516!2 String)
(assert (str.prefixof var2516!1 var2516!2))
(assert true)
(define-const var2296 Int (getNumberOfContainedRecords/-930153819 var3178)) ; Statement: $i0 = virtualinvoke r2.<org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode: int getNumberOfContainedRecords()>() 
(assert true)
(define-const var3842 String (append/1845021834 var2492 var2296)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i0) 
(assert true)
(define-const var2775 String (toString/-222306083 var3842)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (add/1770215592 var2599!2 (cast-from-String-to-var2359 var2775))) ; Statement: virtualinvoke $r0.<java.util.ArrayList: boolean add(java.lang.Object)>($r10) 

(declare-const var2599!3 var3794)
(declare-const var2775!1 String)
(define-const var3800 String String-init) ; Statement: $r11 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3800)) ; Statement: specialinvoke $r11.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3800!1 String)
(assert true)
(define-const var190 String (append/1560614132 var3800!1 "LogRecords in descendant categories: ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("LogRecords in descendant categories: ") 
(declare-const var3800!2 String)
(assert (str.prefixof var3800!1 var3800!2))
(assert true)
(define-const var1406 Int (getNumberOfRecordsFromChildren/1704474875 var3178)) ; Statement: $i1 = virtualinvoke r2.<org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode: int getNumberOfRecordsFromChildren()>() 
(assert true)
(define-const var596 String (append/1845021834 var190 var1406)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i1) 
(assert true)
(define-const var3183 String (toString/-222306083 var596)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (add/1770215592 var2599!3 (cast-from-String-to-var2359 var3183))) ; Statement: virtualinvoke $r0.<java.util.ArrayList: boolean add(java.lang.Object)>($r14) 

(declare-const var2599!4 var3794)
(declare-const var3183!1 String)
(define-const var3983 String String-init) ; Statement: $r15 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3983)) ; Statement: specialinvoke $r15.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3983!1 String)
(assert true)
(define-const var3475 String (append/1560614132 var3983!1 "LogRecords in this category including descendants: ")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("LogRecords in this category including descendants: ") 
(declare-const var3983!2 String)
(assert (str.prefixof var3983!1 var3983!2))
(assert true)
(define-const var1049 Int (getTotalNumberOfRecords/-524510730 var3178)) ; Statement: $i2 = virtualinvoke r2.<org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode: int getTotalNumberOfRecords()>() 
(assert true)
(define-const var2401 String (append/1845021834 var3475 var1049)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i2) 
(assert true)
(define-const var1808 String (toString/-222306083 var2401)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (add/1770215592 var2599!4 (cast-from-String-to-var2359 var1808))) ; Statement: virtualinvoke $r0.<java.util.ArrayList: boolean add(java.lang.Object)>($r18) 

(declare-const var2599!5 var3794)
(declare-const var1808!1 String)
(assert true)
(define-const var3779 (Array Int var2359) (toArray/-551350551 var2599!5)) ; Statement: $r19 = virtualinvoke $r0.<java.util.ArrayList: java.lang.Object[] toArray()>() 
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {var3794-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getTitle/-456128196=([org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), add/1770215592=([java.util.ArrayList, java.lang.Object], boolean), cast-from-String-to-var2359=([java.lang.String], java.lang.Object), hasFatalRecords/883831033=([org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode], boolean), hasFatalChildren/-114558560=([org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode], boolean), getNumberOfContainedRecords/-930153819=([org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode], int), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), getNumberOfRecordsFromChildren/1704474875=([org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode], int), getTotalNumberOfRecords/-524510730=([org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode], int), toArray/-551350551=([java.util.ArrayList], java.lang.Object[])}
; {var1338=org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNodeEditor, var1675=r20, var988=org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode, var3178=r2, var3794=java.util.ArrayList, var2599=$r0, var1729=$r1, var1419=$r4, var2783=$r3, var2574=$r5, var317=$r6, var2359=java.lang.Object, var1757=$z0, var803=$z1, var2516=$r7, var2492=$r8, var2296=$i0, var3842=$r9, var2775=$r10, var3800=$r11, var190=$r12, var1406=$i1, var596=$r13, var3183=$r14, var3983=$r15, var3475=$r16, var1049=$i2, var2401=$r17, var1808=$r18, var3779=$r19}
; {org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNodeEditor=var1338, r20=var1675, org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode=var988, r2=var3178, java.util.ArrayList=var3794, $r0=var2599, $r1=var1729, $r4=var1419, $r3=var2783, $r5=var2574, $r6=var317, java.lang.Object=var2359, $z0=var1757, $z1=var803, $r7=var2516, $r8=var2492, $i0=var2296, $r9=var3842, $r10=var2775, $r11=var3800, $r12=var190, $i1=var1406, $r13=var596, $r14=var3183, $r15=var3983, $r16=var3475, $i2=var1049, $r17=var2401, $r18=var1808, $r19=var3779}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 4,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 5,"<java.lang.StringBuffer: java.lang.String toString()>": 4,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 3}
;stmts r20 := @this: org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNodeEditor;	r2 := @parameter0: org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode;	$r0 = new java.util.ArrayList;	specialinvoke $r0.<java.util.ArrayList: void <init>()>();	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Category: ");	$r3 = virtualinvoke r2.<org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode: java.lang.String getTitle()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r0.<java.util.ArrayList: boolean add(java.lang.Object)>($r6);	$z0 = virtualinvoke r2.<org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode: boolean hasFatalRecords()>();	if $z0 == 0 goto $z1 = virtualinvoke r2.<org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode: boolean hasFatalChildren()>();	$z1 = virtualinvoke r2.<org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode: boolean hasFatalChildren()>();	if $z1 == 0 goto $r7 = new java.lang.StringBuffer;	$r7 = new java.lang.StringBuffer;	specialinvoke $r7.<java.lang.StringBuffer: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("LogRecords in this category alone: ");	$i0 = virtualinvoke r2.<org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode: int getNumberOfContainedRecords()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i0);	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r0.<java.util.ArrayList: boolean add(java.lang.Object)>($r10);	$r11 = new java.lang.StringBuffer;	specialinvoke $r11.<java.lang.StringBuffer: void <init>()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("LogRecords in descendant categories: ");	$i1 = virtualinvoke r2.<org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode: int getNumberOfRecordsFromChildren()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i1);	$r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r0.<java.util.ArrayList: boolean add(java.lang.Object)>($r14);	$r15 = new java.lang.StringBuffer;	specialinvoke $r15.<java.lang.StringBuffer: void <init>()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("LogRecords in this category including descendants: ");	$i2 = virtualinvoke r2.<org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode: int getTotalNumberOfRecords()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i2);	$r18 = virtualinvoke $r17.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r0.<java.util.ArrayList: boolean add(java.lang.Object)>($r18);	$r19 = virtualinvoke $r0.<java.util.ArrayList: java.lang.Object[] toArray()>();	return $r19
;block_num 3