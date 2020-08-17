const fs = require('fs')
const path = require('path');
const core = require('@actions/core');
const github = require('@actions/github');
const git = require('isomorphic-git')
const http = require('isomorphic-git/http/node')

const inputs = {
  owner: github.context.repo.owner,
  repo: github.context.repo.repo,
  wikiPath: path.resolve(process.env.GITHUB_WORKSPACE),
};

console.log(inputs);

async function listFolder(dir) {
  const files = await fs.promises.readdir(path.resolve(dir));
  files.forEach(function (file) {
    console.log(file); 
  });
}

async function main({ owner, repo, wikiPath }) {
  try {
    // Cloning the archive
    await git.clone({ fs, http, dir: wikiPath, url: `https://github.com/${owner}/${repo}.wiki.git` })
    console.log('-------')
    await listFolder(wikiPath)
    console.log('-------')
    await listFolder(path.resolve(wikiPath, '../'))
    console.log('-------')
    await listFolder(path.resolve(wikiPath, '../../_actions/bpetetot'))
    console.log('-------')
  } catch (error) {
    console.log('error', error);
    core.setFailed(error.message);
  }
}

main(inputs);
