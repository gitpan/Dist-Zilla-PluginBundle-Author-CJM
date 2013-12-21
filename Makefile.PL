
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Build a distribution like CJM",
  "AUTHOR" => "Christopher J. Madsen <perl\@cjmweb.net>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Dist-Zilla-PluginBundle-Author-CJM",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Dist::Zilla::PluginBundle::Author::CJM",
  "PREREQ_PM" => {
    "Dist::Zilla" => "4.200001",
    "Dist::Zilla::Plugin::ArchiveRelease" => "0.08",
    "Dist::Zilla::Plugin::CheckPrereqsIndexed" => "0.006",
    "Dist::Zilla::Plugin::ExtraTests" => 0,
    "Dist::Zilla::Plugin::GatherDir" => 0,
    "Dist::Zilla::Plugin::GitVersionCheckCJM" => "4.00",
    "Dist::Zilla::Plugin::License" => 0,
    "Dist::Zilla::Plugin::MakeMaker" => 0,
    "Dist::Zilla::Plugin::ManifestSkip" => 0,
    "Dist::Zilla::Plugin::MatchManifest" => "4.00",
    "Dist::Zilla::Plugin::MetaConfig" => 0,
    "Dist::Zilla::Plugin::MetaJSON" => 0,
    "Dist::Zilla::Plugin::MetaYAML" => 0,
    "Dist::Zilla::Plugin::PodCoverageTests" => 0,
    "Dist::Zilla::Plugin::PodLoom" => "4.10",
    "Dist::Zilla::Plugin::PodSyntaxTests" => 0,
    "Dist::Zilla::Plugin::PruneCruft" => 0,
    "Dist::Zilla::Plugin::RecommendedPrereqs" => "4.06",
    "Dist::Zilla::Plugin::Repository" => "0.16",
    "Dist::Zilla::Plugin::RunExtraTests" => 0,
    "Dist::Zilla::Plugin::TemplateCJM" => "4.20",
    "Dist::Zilla::Plugin::Test::PrereqsFromMeta" => "4.20",
    "Dist::Zilla::Plugin::TestRelease" => 0,
    "Dist::Zilla::Plugin::UploadToCPAN" => 0,
    "Dist::Zilla::Plugin::VersionFromModule" => "0.08",
    "Dist::Zilla::PluginBundle::Git" => "1.103520",
    "Dist::Zilla::Role::PluginBundle::Easy" => 0,
    "Git::Wrapper" => 0,
    "Moose" => "0.65",
    "Moose::Autobox" => "0.09"
  },
  "TEST_REQUIRES" => {},
  "VERSION" => "4.31",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "Dist::Zilla" => "4.200001",
  "Dist::Zilla::Plugin::ArchiveRelease" => "0.08",
  "Dist::Zilla::Plugin::CheckPrereqsIndexed" => "0.006",
  "Dist::Zilla::Plugin::ExtraTests" => 0,
  "Dist::Zilla::Plugin::GatherDir" => 0,
  "Dist::Zilla::Plugin::GitVersionCheckCJM" => "4.00",
  "Dist::Zilla::Plugin::License" => 0,
  "Dist::Zilla::Plugin::MakeMaker" => 0,
  "Dist::Zilla::Plugin::ManifestSkip" => 0,
  "Dist::Zilla::Plugin::MatchManifest" => "4.00",
  "Dist::Zilla::Plugin::MetaConfig" => 0,
  "Dist::Zilla::Plugin::MetaJSON" => 0,
  "Dist::Zilla::Plugin::MetaYAML" => 0,
  "Dist::Zilla::Plugin::PodCoverageTests" => 0,
  "Dist::Zilla::Plugin::PodLoom" => "4.10",
  "Dist::Zilla::Plugin::PodSyntaxTests" => 0,
  "Dist::Zilla::Plugin::PruneCruft" => 0,
  "Dist::Zilla::Plugin::RecommendedPrereqs" => "4.06",
  "Dist::Zilla::Plugin::Repository" => "0.16",
  "Dist::Zilla::Plugin::RunExtraTests" => 0,
  "Dist::Zilla::Plugin::TemplateCJM" => "4.20",
  "Dist::Zilla::Plugin::Test::PrereqsFromMeta" => "4.20",
  "Dist::Zilla::Plugin::TestRelease" => 0,
  "Dist::Zilla::Plugin::UploadToCPAN" => 0,
  "Dist::Zilla::Plugin::VersionFromModule" => "0.08",
  "Dist::Zilla::PluginBundle::Git" => "1.103520",
  "Dist::Zilla::Role::PluginBundle::Easy" => 0,
  "Git::Wrapper" => 0,
  "Moose" => "0.65",
  "Moose::Autobox" => "0.09"
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



