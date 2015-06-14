# ojs-2-4-2
This is our current published Open Journal System installation. It's a fully modified OJS. 

<b>Features:</b><br>
- OJS 2.4.2 modifications (OJS GitHub https://github.com/pkp/ojs):
  - Custom front-end and back-end templates.
  - Custom icons & images.
  - Custom CSS, added some CSS3.
  - Responsive theme.
  - Apple touch icons & Windows Phone Tile.
  - Google structured data markups added.
  - Lot's of weird .htaccess rules due to our hosting configuration, outside our control. But they do work.

- Third-party code/libraries/framework added:
  - Jasny extension of Bootstrap 2.3.1. Source: https://github.com/jasny/bootstrap
  - PHP & JS Style switcher.  Source: http://code.tutsplus.com/tutorials/jquery-style-switcher--net-532
  - Google Fonts: 
    - Roboto: Source:  http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300
    - Open Sans. Source: http://fonts.googleapis.com/css?family=Open+Sans:300,600,700
  - JS Circular Content Carousel. Source: http://tympanus.net/codrops/2011/08/16/circular-content-carousel/
  - Minified CSS & JS via PHP. Source: https://github.com/mrclay/minify

# Notes & Recommendations
- OJS folders /cache/ /public/ and /files/ not provided. Neither config.inc.php for security reasons. So most images will not be available.
- This OJS is installed in a subfolder.
- Modified OJS files are marked with {* MODIFICADO OJS V.2.X.X / MM-YYYY*} 206 changed, aprox.
- No plugins created. 
- Our hosting configuration forced us to hard code most OJS internal links and create lot's of weird .htaccess rules. USUALLY YOU WILL NOT HAVE TO CHANGE OR ADD THIS.
- Some config.inc.php configurations:<br>
base_url = "http://www.relacionesinternacionales.info/ojs"<br>
disable_path_info = On<br>
restful_urls = Off<br>
repository_id = oai.relacionesinternacionales.info

# Files modified in current OJS installation
ojs\lib\pkp\classes\oai\OAI.inc.php 
ojs\lib\pkp\classes\oai\OAIStruct.inc.php 
ojs\lib\pkp\locale\en_US\common.xml 
ojs\lib\pkp\locale\en_US\reader.xml 
ojs\lib\pkp\locale\en_US\submission.xml 
ojs\lib\pkp\locale\es_ES\common.xml 
ojs\lib\pkp\locale\es_ES\manager.xml 
ojs\lib\pkp\locale\es_ES\reader.xml 
ojs\lib\pkp\locale\es_ES\submission.xml 
ojs\lib\pkp\templates\announcement\index.tpl 
ojs\lib\pkp\templates\announcement\list.tpl 
ojs\lib\pkp\templates\announcement\view.tpl 
ojs\lib\pkp\templates\common\breadcrumbs.tpl 
ojs\lib\pkp\templates\common\footer.tpl 
ojs\lib\pkp\templates\common\formErrors.tpl 
ojs\lib\pkp\templates\common\header.tpl 
ojs\lib\pkp\templates\email\email.tpl 
ojs\lib\pkp\templates\help\footer.tpl 
ojs\lib\pkp\templates\help\header.tpl 
ojs\lib\pkp\templates\help\helpToc.tpl 
ojs\lib\pkp\templates\help\searchResults.tpl 
ojs\lib\pkp\templates\help\topic.tpl 
ojs\lib\pkp\templates\help\view.tpl 
ojs\lib\pkp\templates\manager\announcement\announcementForm.tpl 
ojs\lib\pkp\templates\manager\announcement\announcements.tpl 
ojs\lib\pkp\templates\manager\announcement\announcementTypeForm.tpl 
ojs\lib\pkp\templates\manager\announcement\announcementTypes.tpl 
ojs\lib\pkp\templates\user\login.tpl 
ojs\lib\pkp\templates\user\loginChangePassword.tpl 
ojs\lib\pkp\templates\user\lostPassword.tpl 
ojs\locale\en_US\author.xml 
ojs\locale\en_US\locale.xml 
ojs\locale\es_ES\author.xml 
ojs\locale\es_ES\locale.xml 
ojs\locale\es_ES\manager.xml 
ojs\pages\about\AboutHandler.inc.php 
ojs\plugins\blocks\authorBios\block.tpl 
ojs\plugins\blocks\keywordCloud\block.tpl 
ojs\plugins\blocks\keywordCloud\KeywordCloudBlockPlugin.inc.php 
ojs\plugins\blocks\languageToggle\block.tpl 
ojs\plugins\blocks\navigation\block.tpl 
ojs\plugins\blocks\navigation\locale\en_US\locale.xml 
ojs\plugins\blocks\navigation\locale\es_ES\locale.xml 
ojs\plugins\blocks\readingTools\block.tpl 
ojs\plugins\blocks\readingTools\locale\en_US\locale.xml 
ojs\plugins\blocks\relatedItems\block.tpl 
ojs\plugins\blocks\relatedItems\locale\en_US\locale.xml 
ojs\plugins\blocks\relatedItems\locale\es_ES\locale.xml 
ojs\plugins\blocks\user\block.tpl 
ojs\plugins\blocks\user\locale\en_US\locale.xml 
ojs\plugins\blocks\user\locale\es_ES\locale.xml 
ojs\plugins\citationFormats\refWorks\citation.tpl 
ojs\plugins\generic\announcementFeed\templates\block.tpl 
ojs\plugins\generic\googleViewer\index.tpl 
ojs\plugins\generic\staticPages\editStaticPageForm.tpl 
ojs\plugins\generic\staticPages\settingsForm.tpl 
ojs\styles\comments.css 
ojs\templates\about\contact.tpl 
ojs\templates\about\editorialPolicies.tpl 
ojs\templates\about\editorialTeamBoard.tpl 
ojs\templates\about\index.tpl 
ojs\templates\about\journalSponsorship.tpl 
ojs\templates\about\submissions.tpl 
ojs\templates\admin\auth\sources.tpl 
ojs\templates\admin\categories\categories.tpl 
ojs\templates\admin\index.tpl 
ojs\templates\admin\journals.tpl 
ojs\templates\admin\journalSettings.tpl 
ojs\templates\admin\languages.tpl 
ojs\templates\admin\selectMergeUser.tpl 
ojs\templates\admin\settings.tpl 
ojs\templates\admin\systemInfo.tpl 
ojs\templates\article\article.tpl 
ojs\templates\article\footer.tpl 
ojs\templates\article\header.tpl 
ojs\templates\article\pdfViewer.tpl 
ojs\templates\author\active.tpl 
ojs\templates\author\completed.tpl 
ojs\templates\author\index.tpl 
ojs\templates\author\submission\copyedit.tpl 
ojs\templates\author\submission\editorDecision.tpl 
ojs\templates\author\submission\management.tpl 
ojs\templates\author\submission\peerReview.tpl 
ojs\templates\author\submission\proofread.tpl 
ojs\templates\author\submission\status.tpl 
ojs\templates\author\submission\summary.tpl 
ojs\templates\author\submissionEditing.tpl 
ojs\templates\author\submissionReview.tpl 
ojs\templates\author\submit\complete.tpl 
ojs\templates\author\submit\step1.tpl 
ojs\templates\author\submit\step2.tpl 
ojs\templates\author\submit\step3.tpl 
ojs\templates\author\submit\step4.tpl 
ojs\templates\author\submit\step5.tpl 
ojs\templates\author\submit\submitHeader.tpl 
ojs\templates\author\submit\suppFile.tpl 
ojs\templates\citation\citationEditor.tpl 
ojs\templates\editor\index.tpl 
ojs\templates\editor\issues\backIssues.tpl 
ojs\templates\editor\issues\createIssue.tpl 
ojs\templates\editor\issues\futureIssues.tpl 
ojs\templates\editor\issues\issueData.tpl 
ojs\templates\editor\issues\issueGalleys.tpl 
ojs\templates\editor\issues\issueToc.tpl 
ojs\templates\editor\notifyUsers.tpl 
ojs\templates\editor\selectSectionEditor.tpl 
ojs\templates\editor\submissions.tpl 
ojs\templates\editor\submissionsArchives.tpl 
ojs\templates\editor\submissionsInEditing.tpl 
ojs\templates\editor\submissionsInReview.tpl 
ojs\templates\editor\submissionsUnassigned.tpl 
ojs\templates\index\journal.tpl 
ojs\templates\issue\archive.tpl 
ojs\templates\issue\issue.tpl 
ojs\templates\issue\view.tpl 
ojs\templates\manager\emails\emails.tpl 
ojs\templates\manager\emails\emailTemplateForm.tpl 
ojs\templates\manager\files\index.tpl 
ojs\templates\manager\groups\groupForm.tpl 
ojs\templates\manager\groups\groups.tpl 
ojs\templates\manager\groups\memberships.tpl 
ojs\templates\manager\importexport\plugins.tpl 
ojs\templates\manager\index.tpl 
ojs\templates\manager\languageSettings.tpl 
ojs\templates\manager\people\enrollment.tpl 
ojs\templates\manager\people\searchUsers.tpl 
ojs\templates\manager\people\selectMergeUser.tpl 
ojs\templates\manager\people\userProfile.tpl 
ojs\templates\manager\people\userProfileForm.tpl 
ojs\templates\manager\plugins\plugins.tpl 
ojs\templates\manager\reviewForms\previewReviewForm.tpl 
ojs\templates\manager\reviewForms\reviewFormElementForm.tpl 
ojs\templates\manager\reviewForms\reviewFormElements.tpl 
ojs\templates\manager\reviewForms\reviewFormForm.tpl 
ojs\templates\manager\reviewForms\reviewForms.tpl 
ojs\templates\manager\sections\sectionForm.tpl 
ojs\templates\manager\sections\sections.tpl 
ojs\templates\manager\setup\index.tpl 
ojs\templates\manager\setup\setupHeader.tpl 
ojs\templates\manager\setup\step1.tpl 
ojs\templates\manager\setup\step2.tpl 
ojs\templates\manager\setup\step3.tpl 
ojs\templates\manager\setup\step4.tpl 
ojs\templates\manager\setup\step5.tpl 
ojs\templates\manager\statistics\index.tpl 
ojs\templates\manager\statistics\statistics.tpl 
ojs\templates\reviewer\active.tpl 
ojs\templates\reviewer\completed.tpl 
ojs\templates\reviewer\index.tpl 
ojs\templates\reviewer\submission.tpl 
ojs\templates\rt\context.tpl 
ojs\templates\rt\findingReferences.tpl 
ojs\templates\rt\footer.tpl 
ojs\templates\rt\header.tpl 
ojs\templates\rt\suppFiles.tpl 
ojs\templates\rtadmin\index.tpl 
ojs\templates\search\authorDetails.tpl 
ojs\templates\search\authorIndex.tpl 
ojs\templates\search\search.tpl 
ojs\templates\search\titleIndex.tpl 
ojs\templates\sectionEditor\createReviewerForm.tpl 
ojs\templates\sectionEditor\index.tpl 
ojs\templates\sectionEditor\reviewerRecommendation.tpl 
ojs\templates\sectionEditor\searchUsers.tpl 
ojs\templates\sectionEditor\selectReviewer.tpl 
ojs\templates\sectionEditor\selectReviewForm.tpl 
ojs\templates\sectionEditor\setDueDate.tpl 
ojs\templates\sectionEditor\submission\copyedit.tpl 
ojs\templates\sectionEditor\submission\editorDecision.tpl 
ojs\templates\sectionEditor\submission\editors.tpl 
ojs\templates\sectionEditor\submission\layout.tpl 
ojs\templates\sectionEditor\submission\management.tpl 
ojs\templates\sectionEditor\submission\peerReview.tpl 
ojs\templates\sectionEditor\submission\proofread.tpl 
ojs\templates\sectionEditor\submission\rounds.tpl 
ojs\templates\sectionEditor\submission\scheduling.tpl 
ojs\templates\sectionEditor\submission\status.tpl 
ojs\templates\sectionEditor\submission\summary.tpl 
ojs\templates\sectionEditor\submission.tpl 
ojs\templates\sectionEditor\submissionCitations.tpl 
ojs\templates\sectionEditor\submissionEditing.tpl 
ojs\templates\sectionEditor\submissionEmailLog.tpl 
ojs\templates\sectionEditor\submissionEmailLogEntry.tpl 
ojs\templates\sectionEditor\submissionEventLog.tpl 
ojs\templates\sectionEditor\submissionEventLogEntry.tpl 
ojs\templates\sectionEditor\submissionHistory.tpl 
ojs\templates\sectionEditor\submissionNotes.tpl 
ojs\templates\sectionEditor\submissionRegrets.tpl 
ojs\templates\sectionEditor\submissionReview.tpl 
ojs\templates\submission\comment\comment.tpl 
ojs\templates\submission\comment\editComment.tpl 
ojs\templates\submission\comment\editorDecisionComment.tpl 
ojs\templates\submission\comment\editorDecisionEmail.tpl 
ojs\templates\submission\comment\footer.tpl 
ojs\templates\submission\comment\header.tpl 
ojs\templates\submission\comment\peerReviewComment.tpl 
ojs\templates\submission\instructions.tpl 
ojs\templates\submission\layout\galleyForm.tpl 
ojs\templates\submission\metadata\metadata.tpl 
ojs\templates\submission\metadata\metadataEdit.tpl 
ojs\templates\submission\reviewForm\reviewFormResponse.tpl 
ojs\templates\submission\suppFile\suppFile.tpl 
ojs\templates\user\changePassword.tpl 
ojs\templates\user\index.tpl 
ojs\templates\user\profile.tpl 
ojs\templates\user\register.tpl 
