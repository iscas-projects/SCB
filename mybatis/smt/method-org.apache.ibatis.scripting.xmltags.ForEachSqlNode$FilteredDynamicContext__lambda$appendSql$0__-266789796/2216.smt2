(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3669 0)
(declare-sort var1759 0)
(declare-sort var3005 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun item/-867226418 (var3669) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun index/-867226418 (var3669) Int)
(declare-fun var3005_access$000/-699282375 (String Int) String)
(declare-fun replaceFirst/750800361 (String String String) String)
(declare-fun itemIndex/-867226418 (var3669) String)
(declare-const null-var3669 var3669)
(declare-const null-String String)
(declare-const var2724 var3669) ; Statement: r2 := @this: org.apache.ibatis.scripting.xmltags.ForEachSqlNode$FilteredDynamicContext 
(assert (not (= var2724 null-var3669)))
(declare-const var3811 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3811 null-String)))
(define-const var2562 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2562)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2562!1 String)
(assert (= var2562!1 ""))
(assert true)
(define-const var1169 String (append/672562846 var2562!1 "^\u005cs*")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("^\\s*") 
(declare-const var2562!2 String)
(assert (= var2562!2 (str.++ var2562!1 "^\u005cs*")))
(define-const var1778 String (item/-867226418 var2724)) ; Statement: $r3 = r2.<org.apache.ibatis.scripting.xmltags.ForEachSqlNode$FilteredDynamicContext: java.lang.String item> 
(assert true)
(define-const var1755 String (append/672562846 var1169 var1778)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1169!1 String)
(assert (= var1169!1 (str.++ var1169 var1778)))
(assert true)
(define-const var3995 String (append/672562846 var1755 "(?![^.,:\u005cs])")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(?![^.,:\\s])") 
(declare-const var1755!1 String)
(assert (= var1755!1 (str.++ var1755 "(?![^.,:\u005cs])")))
(assert true)
(define-const var2471 String (toString/-2075883882 var3995)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3993 String (item/-867226418 var2724)) ; Statement: $r7 = r2.<org.apache.ibatis.scripting.xmltags.ForEachSqlNode$FilteredDynamicContext: java.lang.String item> 
(define-const var3301 Int (index/-867226418 var2724)) ; Statement: $i0 = r2.<org.apache.ibatis.scripting.xmltags.ForEachSqlNode$FilteredDynamicContext: int index> 
(define-const var440 String (var3005_access$000/-699282375 var3993 var3301)) ; Statement: $r8 = staticinvoke <org.apache.ibatis.scripting.xmltags.ForEachSqlNode: java.lang.String access$000(java.lang.String,int)>($r7, $i0) 
(assert true)
(define-const var1108 String (replaceFirst/750800361 var3811 var2471 var440)) ; Statement: r19 = virtualinvoke r0.<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>($r9, $r8) 
(define-const var2894 String (itemIndex/-867226418 var2724)) ; Statement: $r10 = r2.<org.apache.ibatis.scripting.xmltags.ForEachSqlNode$FilteredDynamicContext: java.lang.String itemIndex> 
 ; Statement: if $r10 == null goto $r20 = new java.lang.StringBuilder 
(assert (= var2894 null-String)) ; Cond: $r10 == null 
(define-const var821 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var821)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var821!1 String)
(assert (= var821!1 ""))
(assert true)
(define-const var1218 String (append/672562846 var821!1 "#{")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#{") 
(declare-const var821!2 String)
(assert (= var821!2 (str.++ var821!1 "#{")))
(assert true)
(define-const var3950 String (append/672562846 var1218 var1108)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r19) 
(declare-const var1218!1 String)
(assert (= var1218!1 (str.++ var1218 var1108)))
(assert true)
(define-const var1297 String (append/672562846 var3950 "}")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var3950!1 String)
(assert (= var3950!1 (str.++ var3950 "}")))
(assert true)
(define-const var966 String (toString/-2075883882 var1297)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), item/-867226418=([org.apache.ibatis.scripting.xmltags.ForEachSqlNode$FilteredDynamicContext], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), index/-867226418=([org.apache.ibatis.scripting.xmltags.ForEachSqlNode$FilteredDynamicContext], int), var3005_access$000/-699282375=([java.lang.String, int], java.lang.String), replaceFirst/750800361=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), itemIndex/-867226418=([org.apache.ibatis.scripting.xmltags.ForEachSqlNode$FilteredDynamicContext], java.lang.String)}
; {var3669=org.apache.ibatis.scripting.xmltags.ForEachSqlNode$FilteredDynamicContext, var2724=r2, var3811=r0, var1759=null_type, var2562=$r1, var1169=$r4, var1778=$r3, var1755=$r5, var3995=$r6, var2471=$r9, var3993=$r7, var3301=$i0, var3005=org.apache.ibatis.scripting.xmltags.ForEachSqlNode, var440=$r8, var1108=r19, var2894=$r10, var821=$r20, var1218=$r21, var3950=$r22, var1297=$r23, var966=$r24}
; {org.apache.ibatis.scripting.xmltags.ForEachSqlNode$FilteredDynamicContext=var3669, r2=var2724, r0=var3811, null_type=var1759, $r1=var2562, $r4=var1169, $r3=var1778, $r5=var1755, $r6=var3995, $r9=var2471, $r7=var3993, $i0=var3301, org.apache.ibatis.scripting.xmltags.ForEachSqlNode=var3005, $r8=var440, r19=var1108, $r10=var2894, $r20=var821, $r21=var1218, $r22=var3950, $r23=var1297, $r24=var966}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>": 1}
;stmts r2 := @this: org.apache.ibatis.scripting.xmltags.ForEachSqlNode$FilteredDynamicContext;	r0 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("^\\s*");	$r3 = r2.<org.apache.ibatis.scripting.xmltags.ForEachSqlNode$FilteredDynamicContext: java.lang.String item>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(?![^.,:\\s])");	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = r2.<org.apache.ibatis.scripting.xmltags.ForEachSqlNode$FilteredDynamicContext: java.lang.String item>;	$i0 = r2.<org.apache.ibatis.scripting.xmltags.ForEachSqlNode$FilteredDynamicContext: int index>;	$r8 = staticinvoke <org.apache.ibatis.scripting.xmltags.ForEachSqlNode: java.lang.String access$000(java.lang.String,int)>($r7, $i0);	r19 = virtualinvoke r0.<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>($r9, $r8);	$r10 = r2.<org.apache.ibatis.scripting.xmltags.ForEachSqlNode$FilteredDynamicContext: java.lang.String itemIndex>;	if $r10 == null goto $r20 = new java.lang.StringBuilder;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#{");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r19);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	return $r24
;block_num 2